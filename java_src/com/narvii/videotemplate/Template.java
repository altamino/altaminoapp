package com.narvii.videotemplate;

import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class Template implements Serializable {
    private static final long serialVersionUID = 1659456336585106876L;
    public String backgroundMusic;
    public int fps;
    public String id;
    public int inputCount;
    public int minInputCount;
    public int outputFrameCount;
    public ArrayList<TemplateSegment> segments;
    public int version;
    public boolean videoEnabled;
}
