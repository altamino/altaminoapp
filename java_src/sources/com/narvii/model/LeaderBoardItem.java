package com.narvii.model;

import com.fasterxml.jackson.databind.node.ObjectNode;

/* JADX INFO: loaded from: classes5.dex */
public class LeaderBoardItem {
    public static final int TYPE_LEADERBOARD_CHECKIN = 3;
    public static final int TYPE_LEADERBOARD_HALL_OF_FRAME = 5;
    public static final int TYPE_LEADERBOARD_MOST_ACTIVE_24_HOURS = 1;
    public static final int TYPE_LEADERBOARD_MOST_ACTIVE_2_DAYS = 2;
    public static final int TYPE_LEADERBOARD_QUIZZES = 4;
    public boolean enabled;
    public String id;
    public ObjectNode style;
    public int type;

    public LeaderBoardItem() {
    }

    public LeaderBoardItem(int i10) {
        this(i10, null, true, String.valueOf(i10));
    }

    public LeaderBoardItem(int i10, ObjectNode objectNode, boolean z6, String str) {
        this.type = i10;
        this.style = objectNode;
        this.enabled = z6;
        this.id = str;
    }
}
