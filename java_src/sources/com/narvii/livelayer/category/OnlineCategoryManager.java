package com.narvii.livelayer.category;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class OnlineCategoryManager {
    public static List<OnlineCategoryConfig> configList;

    static {
        ArrayList arrayList = new ArrayList();
        configList = arrayList;
        arrayList.add(new ChatCategoryConfig());
        configList.add(new QuizCategoryConfig());
        configList.add(new PostCategoryConfig());
        configList.add(new PollOnlineCategoryConfig());
        configList.add(new VoteOnlineCategoryConfig());
        configList.add(new CommentOnlineCategoryConfig());
        configList.add(new BrowsingCategoryConfig());
        configList.add(new LiveChatCategoryConfig());
    }
}
