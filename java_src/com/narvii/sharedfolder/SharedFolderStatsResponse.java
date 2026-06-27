package com.narvii.sharedfolder;

import com.narvii.model.api.ApiResponse;

/* loaded from: classes3.dex */
public class SharedFolderStatsResponse extends ApiResponse {
    public Stats stats;

    public static class Stats {
        public int fileCount;
        public int folderCount;
    }
}
