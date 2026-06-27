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
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: SceneTemplateGeneratorFragment.kt */
/* loaded from: classes3.dex */
public final class SceneTemplateGeneratorFragmentKt {
    public static final SceneInfo blogConvertToScene(Blog blog, Context context, String videoFilePath, Template template, StreamInfo videoStreamInfo) {
        String strSubstring;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(videoFilePath, "videoFilePath");
        Intrinsics.checkParameterIsNotNull(template, "template");
        Intrinsics.checkParameterIsNotNull(videoStreamInfo, "videoStreamInfo");
        if (blog == null || (strSubstring = blog.title) == null) {
            strSubstring = null;
        } else if (strSubstring.length() > 20) {
            if (strSubstring == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            strSubstring = strSubstring.substring(0, 20);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
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
        sceneInfo.videoClips = CollectionsKt__CollectionsKt.arrayListOf(aVClipInfoPack);
        if (!TextUtils.isEmpty(strSubstring)) {
            Caption caption = new Caption();
            caption.text = strSubstring;
            caption.textColor = -1;
            caption.isBold = true;
            TextPaint textPaint = new TextPaint();
            textPaint.setTextSize(caption.fontSize);
            StaticLayout staticLayout = new StaticLayout(caption.text, textPaint, Utils.getScreenWidth(context), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            IntRange intRangeUntil = RangesKt___RangesKt.until(0, staticLayout.getLineCount());
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                arrayList.add(Float.valueOf(staticLayout.getLineWidth(((IntIterator) it).nextInt())));
            }
            Float fMax = CollectionsKt___CollectionsKt.max(arrayList);
            caption.scaleX = Math.min(576.0f / (fMax != null ? fMax.floatValue() : staticLayout.getWidth()), 320.0f / staticLayout.getHeight());
            caption.scaleY = caption.scaleX;
            caption.visibleDurationInMs = 5000;
            sceneInfo.captions = CollectionsKt__CollectionsKt.arrayListOf(caption);
        }
        sceneInfo.template = template;
        return sceneInfo;
    }
}
