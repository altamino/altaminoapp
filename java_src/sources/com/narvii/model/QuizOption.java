package com.narvii.model;

import android.util.Base64;
import com.google.common.base.c;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.nio.charset.Charset;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes6.dex */
public class QuizOption {
    private static final Charset ascii;
    private static final Mac mac;
    public Boolean isCorrect;
    public List<Media> mediaList;
    public String optId;
    public String qhash;
    public String title;

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QuizOption)) {
            return false;
        }
        QuizOption quizOption = (QuizOption) obj;
        return Utils.isEquals(quizOption.optId, this.optId) && Utils.isEquals(quizOption.title, this.title) && Utils.isListEquals(this.mediaList, quizOption.mediaList);
    }

    static {
        Charset charsetDefaultCharset;
        Mac mac2 = null;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(new byte[]{-7, c.FF, -120, 90, 109, -92, c.GS, 87}, "HmacSHA1");
            mac2 = Mac.getInstance("HmacSHA1");
            mac2.init(secretKeySpec);
        } catch (Exception e) {
            Log.e("no hmac algorithm", e);
        }
        mac = mac2;
        try {
            charsetDefaultCharset = Charset.forName("US-ASCII");
        } catch (Exception unused) {
            charsetDefaultCharset = Charset.defaultCharset();
        }
        ascii = charsetDefaultCharset;
    }

    public Media getFirstMedia() {
        if (CollectionUtils.isEmpty(this.mediaList)) {
            return null;
        }
        return this.mediaList.get(0);
    }

    public int hashCode() {
        return (this.optId + this.title).hashCode();
    }

    public boolean isCorrect(String str) {
        Mac mac2;
        Boolean bool = this.isCorrect;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.qhash == null || (mac2 = mac) == null) {
            return false;
        }
        mac2.reset();
        if (str != null) {
            mac2.update(str.getBytes());
        }
        String str2 = this.optId;
        if (str2 != null) {
            mac2.update(str2.getBytes());
        }
        mac2.update(TarConstants.LF_LINK);
        return Base64.encodeToString(mac2.doFinal(), 3).equals(this.qhash);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.optId);
        sb.append(" - ");
        sb.append(this.title);
        sb.append(" (");
        Object obj = this.qhash;
        if (obj == null) {
            obj = this.isCorrect;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
