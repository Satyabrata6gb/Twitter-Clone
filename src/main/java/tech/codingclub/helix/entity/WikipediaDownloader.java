package tech.codingclub.helix.entity;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import tech.codingclub.helix.global.HTTPURLConnectionExample;

public class WikipediaDownloader{

    public String keyword;

    public WikipediaDownloader(){

    }

    public WikipediaDownloader(String keyword) {
        this.keyword = keyword;
    }

    public WikiResult getResult() {

        if(this.keyword == null || this.keyword.length() == 0){
            return null;
        }

        this.keyword = this.keyword.trim().replaceAll("[ ]", "_");

        System.out.println(this.keyword);

        String wikiURL = getWikipediaURLForQuery(this.keyword);
        String response = "";
        String imgUrl = "";

        System.out.println(wikiURL);

        try {
            String wikipediaResponse = HTTPURLConnectionExample.sendGET(wikiURL);
            //System.out.println(wikipediaResponse);

            Document document = Jsoup.parse(wikipediaResponse,"https://en.wikipedia.org" );

            Elements childElements = document.body().select(".mw-parser-output > *");

            int state = 0;
            for(Element childElement : childElements){
                if(state == 0){
                    if(childElement.tagName().equals("table")) {
                        state = 1;
                    }
                }else if(state == 1) {
                    if (childElement.tagName().equals("p")) {
                        state = 2;
                        response = childElement.text();
                        break;
                    }
                }
            }

            try{
                imgUrl = document.body().select(".infobox img").get(0).attr("src");
            }catch (Exception e){
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        WikiResult wikiResult = new WikiResult(this.keyword, response, imgUrl);

        return  wikiResult;

    }

    private String getWikipediaURLForQuery(String cleanKeyword) {
        return "https://en.wikipedia.org/wiki/"+cleanKeyword;
    }

}
