package com.narvii.scene.template;

import android.content.Context;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.narvii.model.Blog;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.Utils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StreamInfo;
import com.narvii.videotemplate.Template;
import j8.o;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import kotlin.collections.d0;
import kotlin.collections.m0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class SceneTemplateGeneratorFragmentKt {
    @NotNull
    public static final SceneInfo blogConvertToScene(@Nullable Blog blog, @NotNull Context context, @NotNull String videoFilePath, @NotNull Template template, @NotNull StreamInfo videoStreamInfo) {
        String strSubstring;
        t.j(context, "context");
        t.j(videoFilePath, "videoFilePath");
        t.j(template, "template");
        t.j(videoStreamInfo, "videoStreamInfo");
        if (blog == null || (strSubstring = blog.title) == null) {
            strSubstring = null;
        } else if (strSubstring.length() > 20) {
            strSubstring = strSubstring.substring(0, 20);
            t.i(strSubstring, "substring(...)");
        }
        AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        aVClipInfoPack.inputPath = videoFilePath;
        aVClipInfoPack.originalInputPath = videoFilePath;
        aVClipInfoPack.fileName = new File(videoFilePath).getName();
        aVClipInfoPack.trimStartInMs = 0;
        aVClipInfoPack.trimEndInMs = Math.min(videoStreamInfo.durationInMs, SceneConstant.getMaxSceneLengthMs());
        aVClipInfoPack.videoSource = 16;
        SceneInfo sceneInfo = new SceneInfo();
        sceneInfo.id = UUID.randomUUID().toString();
        sceneInfo.videoClips = v.g(aVClipInfoPack);
        if (!TextUtils.isEmpty(strSubstring)) {
            Caption caption = new Caption();
            caption.text = strSubstring;
            caption.textColor = -1;
            caption.isBold = true;
            TextPaint textPaint = new TextPaint();
            textPaint.setTextSize(caption.fontSize);
            StaticLayout staticLayout = new StaticLayout(caption.text, textPaint, Utils.getScreenWidth(context), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            j8.i iVarV = o.v(0, staticLayout.getLineCount());
            ArrayList arrayList = new ArrayList(w.x(iVarV, 10));
            Iterator<Integer> it = iVarV.iterator();
            while (it.hasNext()) {
                arrayList.add(Float.valueOf(staticLayout.getLineWidth(((m0) it).nextInt())));
            }
            Float fY0 = d0.y0(arrayList);
            float fMin = Math.min(576.0f / (fY0 != null ? fY0.floatValue() : staticLayout.getWidth()), 320.0f / staticLayout.getHeight());
            caption.scaleX = fMin;
            caption.scaleY = fMin;
            caption.visibleDurationInMs = 5000;
            sceneInfo.captions = v.g(caption);
        }
        sceneInfo.template = template;
        return sceneInfo;
    }
}
