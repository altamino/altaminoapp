package com.narvii.modulization.page;

import android.text.TextUtils;
import com.narvii.lib.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class PageManager {
    public static final String PAGE_BEST_QUIZZES_URI = "ndc://quizzes/best";
    public static final String PAGE_BLOG_CATEGORY_URI = "ndc://blog-category/";
    public static final String PAGE_BLOG_URI = "ndc://blogs";
    public static final String PAGE_CATALOG_URI = "ndc://catalog";
    public static final String PAGE_CHAT_THREAD_URI = "ndc://chat-thread/";
    public static final String PAGE_EXTERNAL_POSTS_URI = "ndc://external-posts";
    public static final String PAGE_FEATURED_URI = "ndc://featured";
    public static final String PAGE_FOLLOWING_FEED_URI = "ndc://following-feed";
    public static final String PAGE_GUIDELINES_URI = "ndc://guidelines";
    public static final String PAGE_HOME_URI = "ndc://default";
    public static final String PAGE_IMAGE_POST_URI = "ndc://image-posts";
    public static final String PAGE_LATEST_FEED_URI = "ndc://latest-posts";
    public static final String PAGE_LATEST_QUIZZES_URI = "ndc://quizzes/latest";
    public static final String PAGE_LEADERBOARDS_URI = "ndc://leaderboards";
    public static final String PAGE_LINK_POST_URI = "ndc://link-posts";
    public static final String PAGE_MY_CHAT_URI = "ndc://my-chats";
    public static final String PAGE_POLL_URI = "ndc://polls";
    public static final String PAGE_PUBLIC_CHATROOMS_URI = "ndc://public-chats";
    public static final String PAGE_QUESTION_URI = "ndc://questions";
    public static final String PAGE_QUIZZES_URI = "ndc://quizzes";
    public static final String PAGE_RECOMMENDED_URI = "ndc://recommended-posts";
    public static final String PAGE_SHARED_FOLDER_ALBUMS_URI = "ndc://shared-folder/albums";
    public static final String PAGE_SHARED_FOLDER_LATEST_PHOTOS_URI = "ndc://shared-folder/photos";
    public static final String PAGE_SHARED_FOLDER_URI = "ndc://shared-folder";
    public static final String PAGE_STORIES_URI = "ndc://stories";
    public static final String PAGE_TOPIC_CATEGORIES_URI = "ndc://blog-categories";
    public static final String PAGE_TRENDING_QUIZZES_URI = "ndc://quizzes/trending";
    public static HashMap<String, PageItem> pageItemHashMap = new LinkedHashMap();
    public static List<String> pagesNeedSession = new ArrayList();
    public static final PageItem PAGE_UNKOWN = new PageItem(0, R.color.page_guidelines, R.drawable.ic_page_guidelines);
    public static final PageItem PAGE_URL = new PageItem(0, R.color.page_url, R.drawable.ic_page_url);

    static {
        pagesNeedSession.add(PAGE_FOLLOWING_FEED_URI);
        pagesNeedSession.add(PAGE_MY_CHAT_URI);
        pageItemHashMap.put(PAGE_HOME_URI, new PageItem(R.string.page_home, R.color.page_home, R.drawable.ic_page_home));
        pageItemHashMap.put(PAGE_LATEST_FEED_URI, new PageItem(R.string.page_latest_feed, R.color.page_latest_feed, R.drawable.ic_page_latest_feed));
        pageItemHashMap.put(PAGE_RECOMMENDED_URI, new PageItem(R.string.recommended, R.color.page_recommended_feed, R.drawable.ic_page_recommended_feed));
        pageItemHashMap.put(PAGE_FOLLOWING_FEED_URI, new PageItem(R.string.page_following_feed, R.color.page_following_feed, R.drawable.ic_page_following_feed));
        pageItemHashMap.put(PAGE_PUBLIC_CHATROOMS_URI, new PageItem(R.string.page_public_chatroom, R.color.chat_theme_color, R.drawable.ic_page_public_chat));
        pageItemHashMap.put(PAGE_MY_CHAT_URI, new PageItem(R.string.page_my_chat, R.color.chat_theme_color, R.drawable.ic_page_my_chat));
        pageItemHashMap.put(PAGE_LEADERBOARDS_URI, new PageItem(R.string.page_leaderboards, R.color.page_leaderboards, R.drawable.ic_page_leaderboards));
        pageItemHashMap.put(PAGE_TOPIC_CATEGORIES_URI, new PageItem(R.string.post_categories, R.color.page_topic_category, R.drawable.ic_page_topic_category));
        pageItemHashMap.put(PAGE_IMAGE_POST_URI, new PageItem(R.string.page_image_post, R.color.page_image_post, R.drawable.ic_page_image_post));
        pageItemHashMap.put(PAGE_BLOG_URI, new PageItem(R.string.page_blog, R.color.page_blog, R.drawable.ic_page_blog));
        pageItemHashMap.put(PAGE_BEST_QUIZZES_URI, new PageItem(R.string.page_best_quizzes, R.color.page_quizzes, R.drawable.ic_page_quizzes));
        pageItemHashMap.put(PAGE_TRENDING_QUIZZES_URI, new PageItem(R.string.page_trending_quizzes, R.color.page_quizzes, R.drawable.ic_page_quizzes));
        pageItemHashMap.put(PAGE_LATEST_QUIZZES_URI, new PageItem(R.string.page_latest_quizzes, R.color.page_quizzes, R.drawable.ic_page_quizzes));
        pageItemHashMap.put(PAGE_QUIZZES_URI, new PageItem(R.string.page_quizzes, R.color.page_quizzes, R.drawable.ic_page_quizzes));
        pageItemHashMap.put(PAGE_SHARED_FOLDER_ALBUMS_URI, new PageItem(R.string.albums, R.color.page_shared_folder, R.drawable.ic_page_shared_folder));
        pageItemHashMap.put(PAGE_SHARED_FOLDER_LATEST_PHOTOS_URI, new PageItem(R.string.all_photos, R.color.page_shared_folder, R.drawable.ic_page_shared_folder));
        pageItemHashMap.put(PAGE_SHARED_FOLDER_URI, new PageItem(R.string.shared_folder, R.color.page_shared_folder, R.drawable.ic_page_shared_folder));
        pageItemHashMap.put(PAGE_LINK_POST_URI, new PageItem(R.string.page_link_post, R.color.page_link_post, R.drawable.ic_page_link_posts));
        pageItemHashMap.put(PAGE_POLL_URI, new PageItem(R.string.page_poll, R.color.page_poll, R.drawable.ic_page_poll));
        pageItemHashMap.put(PAGE_FEATURED_URI, new PageItem(R.string.page_featured, R.color.page_featured, R.drawable.ic_page_featured));
        pageItemHashMap.put(PAGE_QUESTION_URI, new PageItem(R.string.page_question, R.color.page_question, R.drawable.ic_page_questions));
        pageItemHashMap.put(PAGE_STORIES_URI, new PageItem(R.string.page_story, R.color.page_story, R.drawable.ic_page_story));
        pageItemHashMap.put(PAGE_CATALOG_URI, new PageItem(R.string.page_wiki, R.color.page_wiki, R.drawable.ic_page_wiki));
        pageItemHashMap.put(PAGE_GUIDELINES_URI, new PageItem(R.string.page_guidelines, R.color.page_guidelines, R.drawable.ic_page_guidelines));
        pageItemHashMap.put(PAGE_EXTERNAL_POSTS_URI, new PageItem(R.string.page_external_post, R.color.page_external_post, R.drawable.ic_page_external_post));
        pageItemHashMap.put("ndc://blog/", new PageItem(0, R.color.page_blog, R.drawable.ic_page_blog));
        pageItemHashMap.put("ndc://item/", new PageItem(0, R.color.page_wiki, R.drawable.ic_page_wiki_entry));
        pageItemHashMap.put("ndc://user-profile/", new PageItem(0, R.color.page_object_user, R.drawable.ic_page_user));
        pageItemHashMap.put(PAGE_CHAT_THREAD_URI, new PageItem(0, R.color.chat_theme_color, R.drawable.ic_page_public_chat));
        pageItemHashMap.put("ndc://item-category/", new PageItem(0, R.color.page_wiki, R.drawable.ic_page_wiki));
        pageItemHashMap.put(PAGE_BLOG_CATEGORY_URI, new PageItem(0, R.color.page_topic_category, R.drawable.ic_page_topic_category));
    }

    public static PageItem getPageItemByUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return PAGE_UNKOWN;
        }
        if (str.startsWith("http://") || str.startsWith("https://")) {
            return PAGE_URL;
        }
        for (Map.Entry<String, PageItem> entry : pageItemHashMap.entrySet()) {
            if (str.startsWith(entry.getKey())) {
                return entry.getValue();
            }
        }
        return PAGE_UNKOWN;
    }

    public static boolean needSession(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<String> it = pagesNeedSession.iterator();
        while (it.hasNext()) {
            if (str.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }
}
