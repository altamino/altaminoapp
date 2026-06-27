package com.narvii.util.crawler;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class Regex {
    public static final String ICON_REV_TAG_PATTERN = "<img(.*?)src=(\"|')(.+?)(gif|jpg|png|bmp|webp)(\"|')(.*?)(/)?>(</img>)?";
    public static final String ICON_TAG_PATTERN = "<img(.*?)src=(\"|')(.+?)(gif|jpg|png|bmp|webp)(\"|')(.*?)(/)?>(</img>)?";
    public static final String IMAGE_PATTERN = "(.+?)\\.(jpg|png|gif|bmp|webp)$";
    public static final String IMAGE_TAG_PATTERN = "<img(.*?)src=(\"|')(.+?)(gif|jpg|png|bmp|webp)(\"|')(.*?)(/)?>(</img>)?";
    public static final String ITEMPROP_IMAGE_REV_TAG_PATTERN = "<img(.*?)src=(\"|')(.+?)(gif|jpg|png|bmp|webp)(\"|')(.*?)(/)?>(</img>)?";
    public static final String ITEMPROP_IMAGE_TAG_PATTERN = "<img(.*?)src=(\"|')(.+?)(gif|jpg|png|bmp|webp)(\"|')(.*?)(/)?>(</img>)?";
    public static final String LINK_CONTENT_PATTERN = "href=\"(.*?)\"";
    public static final String LINK_PATTERN = "<link(.*?)>";
    public static final String METATAG_CONTENT_PATTERN = "content=\"(.*?)\"";
    public static final String METATAG_PATTERN = "<meta(.*?)>";
    public static final String METATAG_YT_PATTERN = "watch?.*v=(.*)";
    public static final String SCRIPT_PATTERN = "<script(.*?)>(.*?)</script>";
    public static final String TITLE_PATTERN = "<title(.*?)>(.*?)</title>";
    public static final String URL_PATTERN = "<\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]>";

    public static String pregMatch(String str, String str2, int i) {
        Matcher matcher = Pattern.compile(str2).matcher(str);
        return TextCrawler.extendedTrim(matcher.find() ? matcher.group(i) : "");
    }

    public static List<String> pregMatchAll(String str, String str2, int i) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str2).matcher(str);
        while (matcher.find()) {
            arrayList.add(TextCrawler.extendedTrim(matcher.group(i)));
        }
        return arrayList;
    }

    public static List<String> pregMatchAllImages(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str2).matcher(str);
        while (matcher.find()) {
            arrayList.add(TextCrawler.extendedTrim(matcher.group(3)) + matcher.group(4));
        }
        return arrayList;
    }

    public static List<String> pregMatchAllExtraImages(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str2).matcher(str);
        while (matcher.find()) {
            arrayList.add(TextCrawler.extendedTrim(matcher.group(3)) + matcher.group(4));
        }
        return arrayList;
    }
}
