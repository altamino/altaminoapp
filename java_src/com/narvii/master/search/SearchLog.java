package com.narvii.master.search;

import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public class SearchLog {
    public String area;
    public boolean instant;
    public String keyword;
    public NVContext nvContext;

    public static Builder builder(NVContext nVContext, String str) {
        return new Builder(nVContext, str);
    }

    public static class Builder {
        SearchLog searchLog = new SearchLog();

        public Builder(NVContext nVContext, String str) {
            SearchLog searchLog = this.searchLog;
            searchLog.nvContext = nVContext;
            searchLog.keyword = str;
        }

        public Builder instant() {
            this.searchLog.instant = true;
            return this;
        }

        public Builder area(String str) {
            this.searchLog.area = str;
            return this;
        }

        public SearchLog build() {
            return this.searchLog;
        }
    }
}
