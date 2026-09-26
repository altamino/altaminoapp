package com.narvii.master.search;

import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes8.dex */
public class SearchLog {
    public String area;
    public boolean instant;
    public String keyword;
    public NVContext nvContext;

    public static class Builder {
        SearchLog searchLog;

        public SearchLog build() {
            return this.searchLog;
        }

        public Builder area(String str) {
            this.searchLog.area = str;
            return this;
        }

        public Builder instant() {
            this.searchLog.instant = true;
            return this;
        }

        public Builder(NVContext nVContext, String str) {
            SearchLog searchLog = new SearchLog();
            this.searchLog = searchLog;
            searchLog.nvContext = nVContext;
            searchLog.keyword = str;
        }
    }

    public static Builder builder(NVContext nVContext, String str) {
        return new Builder(nVContext, str);
    }
}
