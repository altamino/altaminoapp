package com.narvii.livelayer.category;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class OnlineCategoryManager {
    public static List<OnlineCategoryConfig> configList = new ArrayList();

    static {
        configList.add(new ChatCategoryConfig());
        configList.add(new QuizCategoryConfig());
        configList.add(new PostCategoryConfig());
        configList.add(new PollOnlineCategoryConfig());
        configList.add(new VoteOnlineCategoryConfig());
        configList.add(new CommentOnlineCategoryConfig());
        configList.add(new BrowsingCategoryConfig());
        configList.add(new LiveChatCategoryConfig());
    }
}
