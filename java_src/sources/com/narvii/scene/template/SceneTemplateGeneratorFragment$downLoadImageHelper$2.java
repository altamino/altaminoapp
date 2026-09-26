package com.narvii.scene.template;

import android.text.TextUtils;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SceneTemplateGeneratorFragment$downLoadImageHelper$2 extends v implements e8.a<SceneTemplateImageDownloadHelper> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$downLoadImageHelper$2(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(0);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final SceneTemplateImageDownloadHelper invoke() {
        SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = this.this$0;
        SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper = new SceneTemplateImageDownloadHelper(sceneTemplateGeneratorFragment, sceneTemplateGeneratorFragment.getDraftFile());
        final SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment2 = this.this$0;
        sceneTemplateImageDownloadHelper.setOnDownloadListener(new SceneTemplateImageDownloadHelper.OnDownloadListener() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$downLoadImageHelper$2$1$1
            @Override // com.narvii.scene.template.SceneTemplateImageDownloadHelper.OnDownloadListener
            public void onDownloadProgress(int i10, int i11, @NotNull SceneTemplateGeneratorFragment.Entry entry) {
                Object next;
                t.j(entry, "entry");
                Iterator<T> it = sceneTemplateGeneratorFragment2.getSortLayout().getDatas().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId()));
                SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
                if (selectedEntry != null) {
                    SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment3 = sceneTemplateGeneratorFragment2;
                    selectedEntry.setProgress((int) ((i10 / i11) * 100));
                    selectedEntry.setState(2);
                    sceneTemplateGeneratorFragment3.updateSelectEntry(selectedEntry);
                }
            }

            @Override // com.narvii.scene.template.SceneTemplateImageDownloadHelper.OnDownloadListener
            public void onDownloadSuccess(@NotNull SceneTemplateGeneratorFragment.Entry entry) {
                Object next;
                t.j(entry, "entry");
                Iterator<T> it = sceneTemplateGeneratorFragment2.getSortLayout().getDatas().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId()));
                SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
                if (selectedEntry != null) {
                    SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment3 = sceneTemplateGeneratorFragment2;
                    selectedEntry.setMedia(entry.getMedia());
                    selectedEntry.setState(4);
                    sceneTemplateGeneratorFragment3.updateSelectEntry(selectedEntry);
                }
            }

            @Override // com.narvii.scene.template.SceneTemplateImageDownloadHelper.OnDownloadListener
            public void onDownloadError(@NotNull String url, @Nullable Exception exc, @NotNull SceneTemplateGeneratorFragment.Entry entry) {
                Object next;
                t.j(url, "url");
                t.j(entry, "entry");
                Iterator<T> it = sceneTemplateGeneratorFragment2.getSortLayout().getDatas().iterator();
                do {
                    if (it.hasNext()) {
                        next = it.next();
                    } else {
                        next = null;
                        break;
                    }
                } while (!TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId()));
                SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
                if (selectedEntry != null) {
                    SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment3 = sceneTemplateGeneratorFragment2;
                    selectedEntry.setState(3);
                    sceneTemplateGeneratorFragment3.updateSelectEntry(selectedEntry);
                }
            }
        });
        return sceneTemplateImageDownloadHelper;
    }
}
