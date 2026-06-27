package com.narvii.story;

import android.content.Context;
import android.content.SharedPreferences;
import com.narvii.master.search.GlobalPostSearchPrefsHelper;
import com.narvii.model.TopicTag;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryTopicHistoryPrefsHelper {
    public static final String KEY_STORY_TOPIC_HISTORY = "key_story_topic_history";
    public static final int MXT_STORY_TOPIC_SIZE = 50;
    public static final String SHAREDPRE_NAME = "story";
    private SharedPreferences prefs;
    private List<TopicTag> topicsHistory;

    public StoryTopicHistoryPrefsHelper(Context context) {
        this.prefs = context.getSharedPreferences("story", 0);
    }

    public void saveConfigChange(boolean z, String str) {
        this.prefs.edit().putBoolean(GlobalPostSearchPrefsHelper.KEY_FILTER_BY_MY, z).putString(GlobalPostSearchPrefsHelper.KEY_SORT_BY, str).apply();
    }

    public void addTopic(List<TopicTag> list) {
        if (list == null) {
            return;
        }
        List<TopicTag> topic = getTopic();
        for (TopicTag topicTag : list) {
            if (topicTag != null && !TextUtils.isEmpty(topicTag.title)) {
                topic.add(0, topicTag);
            }
        }
        HashSet hashSet = new HashSet();
        Iterator<TopicTag> it = topic.iterator();
        while (it.hasNext()) {
            if (!hashSet.add(it.next().title)) {
                it.remove();
            }
        }
        setTopic(topic);
    }

    public void setTopic(List<TopicTag> list) {
        if (list == null) {
            return;
        }
        if (list.size() > 50) {
            list.subList(0, 50);
        }
        this.topicsHistory = list;
        this.prefs.edit().putString(KEY_STORY_TOPIC_HISTORY, JacksonUtils.writeAsString(list)).apply();
    }

    public List<TopicTag> getTopic() {
        if (this.topicsHistory == null) {
            this.topicsHistory = JacksonUtils.readListAs(this.prefs.getString(KEY_STORY_TOPIC_HISTORY, null), TopicTag.class);
            if (this.topicsHistory == null) {
                this.topicsHistory = new ArrayList();
            }
        }
        return this.topicsHistory;
    }

    public void clearHistory() {
        setTopic(new ArrayList());
    }
}
