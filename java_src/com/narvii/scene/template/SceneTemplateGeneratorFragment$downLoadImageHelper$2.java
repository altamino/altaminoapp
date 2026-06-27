package com.narvii.scene.template;

import android.text.TextUtils;
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.scene.template.SceneTemplateImageDownloadHelper;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: SceneTemplateGeneratorFragment.kt */
/* loaded from: classes3.dex */
final class SceneTemplateGeneratorFragment$downLoadImageHelper$2 extends Lambda implements Function0<SceneTemplateImageDownloadHelper> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$downLoadImageHelper$2(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(0);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SceneTemplateImageDownloadHelper invoke() {
        SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = this.this$0;
        SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper = new SceneTemplateImageDownloadHelper(sceneTemplateGeneratorFragment, sceneTemplateGeneratorFragment.getDraftFile());
        sceneTemplateImageDownloadHelper.setOnDownloadListener(new SceneTemplateImageDownloadHelper.OnDownloadListener() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$downLoadImageHelper$2$$special$$inlined$apply$lambda$1
            @Override // com.narvii.scene.template.SceneTemplateImageDownloadHelper.OnDownloadListener
            public void onDownloadProgress(int i, int i2, SceneTemplateGeneratorFragment.Entry entry) {
                Object next;
                Intrinsics.checkParameterIsNotNull(entry, "entry");
                Iterator<T> it = this.this$0.this$0.getSortLayout().getDatas().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        if (TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId())) {
                            break;
                        }
                    }
                }
                SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
                if (selectedEntry != null) {
                    selectedEntry.setProgress((int) ((i / i2) * 100));
                    selectedEntry.setState(2);
                    this.this$0.this$0.updateSelectEntry(selectedEntry);
                }
            }

            @Override // com.narvii.scene.template.SceneTemplateImageDownloadHelper.OnDownloadListener
            public void onDownloadSuccess(SceneTemplateGeneratorFragment.Entry entry) {
                Object next;
                Intrinsics.checkParameterIsNotNull(entry, "entry");
                Iterator<T> it = this.this$0.this$0.getSortLayout().getDatas().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        if (TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId())) {
                            break;
                        }
                    }
                }
                SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
                if (selectedEntry != null) {
                    selectedEntry.setMedia(entry.getMedia());
                    selectedEntry.setState(4);
                    this.this$0.this$0.updateSelectEntry(selectedEntry);
                }
            }

            @Override // com.narvii.scene.template.SceneTemplateImageDownloadHelper.OnDownloadListener
            public void onDownloadError(String url, Exception exc, SceneTemplateGeneratorFragment.Entry entry) {
                Object next;
                Intrinsics.checkParameterIsNotNull(url, "url");
                Intrinsics.checkParameterIsNotNull(entry, "entry");
                Iterator<T> it = this.this$0.this$0.getSortLayout().getDatas().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        if (TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId())) {
                            break;
                        }
                    }
                }
                SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
                if (selectedEntry != null) {
                    selectedEntry.setState(3);
                    this.this$0.this$0.updateSelectEntry(selectedEntry);
                }
            }
        });
        return sceneTemplateImageDownloadHelper;
    }
}
