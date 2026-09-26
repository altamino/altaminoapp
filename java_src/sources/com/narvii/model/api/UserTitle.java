package com.narvii.model.api;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class UserTitle implements Comparable<UserTitle> {
    public static final int MAX_CHARS = 20;
    public static final int TYPE_FANS_OF_INFLUENCER = 2;
    public static final int TYPE_NORMAL = 0;
    public static final int TYPE_ROLE = 1;
    public static final int TYPE_VERIFIED = 3;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = UserTitleColorSerializer.class)
    public int color;
    public String title;

    @JsonIgnore
    public int type;

    public static class UserTitleColorSerializer extends JacksonUtils.ColorSerializer {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.narvii.util.JacksonUtils.ColorSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Integer num, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            if (num.intValue() == 0) {
                jsonGenerator.writeNull();
            } else {
                super.serialize(num, jsonGenerator, serializerProvider);
            }
        }
    }

    public UserTitle() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserTitle)) {
            return false;
        }
        UserTitle userTitle = (UserTitle) obj;
        if (userTitle.type == this.type) {
            String str = this.title;
            String lowerCase = str == null ? null : str.toLowerCase(Locale.US);
            String str2 = userTitle.title;
            if (Utils.isEqualsNotNull(lowerCase, str2 != null ? str2.toLowerCase(Locale.US) : null) && userTitle.color == this.color) {
                return true;
            }
        }
        return false;
    }

    public UserTitle(String str) {
        this.title = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(UserTitle userTitle) {
        String str = this.title;
        if (str == null || userTitle == null || userTitle.title == null) {
            return 0;
        }
        Locale locale = Locale.US;
        return str.toLowerCase(locale).compareTo(userTitle.title.toLowerCase(locale));
    }

    public int hashCode() {
        String str = this.title;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public UserTitle(String str, int i10) {
        this.title = str;
        this.type = i10;
    }
}
