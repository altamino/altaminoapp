package com.narvii.sharedfolder;

import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes7.dex */
public class SharedFolderStatsResponse extends ApiResponse {
    public Stats stats;

    public static class Stats {
        public int fileCount;
        public int folderCount;
    }
}
