package com.narvii.topic.model;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.model.api.Pagination;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class StorySections extends NVObject {
    public static final String SECTION_KEY_LATEST = "LATEST";
    public static final String SECTION_KEY_POPULAR = "POPULAR";
    public static final String SECTION_KEY_RECOMMEND = "RECOMMENDATION";

    @JsonDeserialize(contentUsing = Blog.BlogDeserializer.class)
    public List<Blog> blogList;
    public String feedCategoryKey;
    public Pagination paging;
    public static HashMap<String, Integer> feedKeyTitleMapper = new HashMap<>();
    public static HashMap<String, String> feedKeyApiMapper = new HashMap<>();

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    static {
        feedKeyTitleMapper.put(SECTION_KEY_POPULAR, Integer.valueOf(R.string.story_section_popular_cap));
        feedKeyTitleMapper.put(SECTION_KEY_LATEST, Integer.valueOf(R.string.story_section_latest_cap));
        feedKeyTitleMapper.put(SECTION_KEY_RECOMMEND, Integer.valueOf(R.string.story_section_recommand_cap));
        feedKeyApiMapper.put(SECTION_KEY_POPULAR, "popular");
        feedKeyApiMapper.put(SECTION_KEY_LATEST, "latest");
        feedKeyApiMapper.put(SECTION_KEY_RECOMMEND, NotificationCompat.CATEGORY_RECOMMENDATION);
    }

    public String getSectionTitle(Context context) {
        return getSectionTitle(context, this.feedCategoryKey);
    }

    public static String getSectionTitle(Context context, String str) {
        if (feedKeyTitleMapper.containsKey(str)) {
            return context.getString(feedKeyTitleMapper.get(str).intValue());
        }
        return null;
    }
}
