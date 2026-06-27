package com.narvii.theme;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* loaded from: classes.dex */
public class ThemeInfo {
    public static final String BACKGROUND_IMAGE = "background-image";
    public static final String LOGO_IMAGE = "logo";
    public static final String TITLEBAR_BACKGROUND_IMAGE = "titlebar-background-image";
    public static final String TITLEBAR_IMAGE = "titlebar-image";
    public String author;

    @JsonProperty(BACKGROUND_IMAGE)
    @JsonDeserialize(contentAs = ThemeImage.class)
    public List<ThemeImage> background;

    @JsonProperty("format-version")
    public String formatVersion;

    @JsonDeserialize(contentAs = ThemeImage.class)
    public List<ThemeImage> icon;
    public String id;

    @JsonDeserialize(contentAs = ThemeImage.class)
    public List<ThemeImage> logo;

    @JsonProperty(TITLEBAR_IMAGE)
    @JsonDeserialize(contentAs = ThemeImage.class)
    public List<ThemeImage> oldTitlebar;
    public int revision;

    @JsonProperty("theme-color")
    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int themeColor;

    @JsonProperty(TITLEBAR_BACKGROUND_IMAGE)
    @JsonDeserialize(contentAs = ThemeImage.class)
    public List<ThemeImage> titlebar;

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ThemeInfo m57clone() {
        return (ThemeInfo) JacksonUtils.readAs(JacksonUtils.writeAsString(this), ThemeInfo.class);
    }
}
