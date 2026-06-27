package com.narvii.model;

/* loaded from: classes3.dex */
public class DebugInfo {
    public String category;
    public String diversity;
    public String matchedIns;
    public String rankScore;
    public String recallReason;

    public String toStringList() {
        return " recallReason :" + this.recallReason + "\n category :" + this.category + "\n rankScore :" + this.rankScore + "\n diversity :" + this.diversity + "\n matchedIns :" + this.matchedIns + "\n";
    }
}
