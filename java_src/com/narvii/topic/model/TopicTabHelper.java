package com.narvii.topic.model;

import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.topic.TopicRelatedChatListFragment;
import com.narvii.topic.TopicRelatedCommunityListFragment;
import com.narvii.topic.TopicRelatedDiscoverFragment;
import com.narvii.topic.TopicRelatedStoryListFragment;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class TopicTabHelper {
    public static final String TYPE_CHAT = "CHAT";
    public static final String TYPE_COMMUNITY = "COMMUNITY";
    public static final String TYPE_DISCOVER = "DISCOVER";
    public static final String TYPE_STORY = "STORY";
    static HashMap<String, Class> tabClzzMapper = new HashMap<>();
    static HashMap<String, Integer> tabTitleMapper = new HashMap<>();

    static {
        tabClzzMapper.put(TYPE_DISCOVER, TopicRelatedDiscoverFragment.class);
        tabClzzMapper.put("STORY", TopicRelatedStoryListFragment.class);
        tabClzzMapper.put(TYPE_COMMUNITY, TopicRelatedCommunityListFragment.class);
        tabClzzMapper.put(TYPE_CHAT, TopicRelatedChatListFragment.class);
        HashMap<String, Integer> map = tabTitleMapper;
        Integer numValueOf = Integer.valueOf(R.string.stories);
        map.put(TYPE_DISCOVER, numValueOf);
        tabTitleMapper.put("STORY", numValueOf);
        tabTitleMapper.put(TYPE_COMMUNITY, Integer.valueOf(R.string.communities));
        tabTitleMapper.put(TYPE_CHAT, Integer.valueOf(R.string.chats));
    }

    public static boolean containsTab(String str) {
        Iterator<Map.Entry<String, Class>> it = tabClzzMapper.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static Class<? extends NVFragment> getMappedClzz(String str) {
        for (Map.Entry<String, Class> entry : tabClzzMapper.entrySet()) {
            if (entry.getKey().equals(str)) {
                return entry.getValue();
            }
        }
        return null;
    }

    public static Integer getMappedTitle(String str) {
        for (Map.Entry<String, Integer> entry : tabTitleMapper.entrySet()) {
            if (entry.getKey().equals(str)) {
                return entry.getValue();
            }
        }
        return 0;
    }
}
