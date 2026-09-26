package org.apache.http.entity.mime;

/* JADX INFO: loaded from: classes5.dex */
public class MinimalField {
    private final String name;
    private final String value;

    public String getBody() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return this.name + ": " + this.value;
    }

    MinimalField(String str, String str2) {
        this.name = str;
        this.value = str2;
    }
}
