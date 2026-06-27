package com.narvii.videotemplate;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;

/* loaded from: classes3.dex */
public class TemplateSegment implements Serializable {
    private static final long serialVersionUID = -2358941369588540863L;
    public int channel;
    public int[] channelInputs;
    public int[] channelRenderDelays;
    public int frameCount;
    public int frameOffset;
    public int[] pass2ExtraInputs;

    @JsonIgnore
    public int pass2InputCount;

    @JsonIgnore
    public int passCount;
    public String[] shader;

    @JsonIgnore
    public String shaderString;

    @JsonIgnore
    public String shaderString2Pass;
}
