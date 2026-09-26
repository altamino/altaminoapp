package com.narvii.monetization.avatarframe;

import android.graphics.Color;
import android.text.TextUtils;
import com.narvii.util.JacksonUtils;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class AvatarFrameConfig {
    public String avatarFramePath;
    public File fileFolder;
    public String id;
    public String moodColor;
    public String name;
    public String userIconBorderColor;
    public int version;

    public void setFileFolder(File file) {
        this.fileFolder = file;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AvatarFrameConfig m1626clone() {
        return (AvatarFrameConfig) JacksonUtils.readAs(JacksonUtils.writeAsString(this), getClass());
    }

    public String getAbsAvatarFramePath() {
        File file = this.fileFolder;
        if (file == null || !file.exists()) {
            return null;
        }
        return this.fileFolder.getAbsolutePath() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + this.avatarFramePath;
    }

    public int getBorderColor() {
        return Color.parseColor(TextUtils.isEmpty(this.userIconBorderColor) ? "#FFFFFF" : this.userIconBorderColor);
    }

    public int getMoodColor() {
        return Color.parseColor(TextUtils.isEmpty(this.moodColor) ? "#7ccdf2" : this.moodColor);
    }
}
