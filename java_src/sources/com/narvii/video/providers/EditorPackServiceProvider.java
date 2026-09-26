package com.narvii.video.providers;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.editors.NVEditorDelegate;
import com.narvii.services.ServiceProvider;
import com.narvii.video.interfaces.IEditorRecycler;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ISceneVideoGenerator;
import com.narvii.video.player.ExoEditorPreviewPlayer;
import com.narvii.video.services.IEditorPackFactory;
import g7.a;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class EditorPackServiceProvider implements ServiceProvider<IEditorPackFactory> {

    @Nullable
    private IEditorPackFactory factory;

    public static final class ExoEditorPackFactory implements IEditorPackFactory {
        @Override // com.narvii.video.services.IEditorPackFactory
        @Nullable
        public ISceneVideoGenerator getVideoGenerator() {
            return null;
        }

        @Override // com.narvii.video.services.IEditorPackFactory
        @Nullable
        public IEditorRecycler getVideoRecycler() {
            return null;
        }

        @Override // com.narvii.video.services.IEditorPackFactory
        @NotNull
        public a getIEditorDelegate(@NotNull NVContext nvcontext) {
            t.j(nvcontext, "nvcontext");
            NVEditorDelegate.Companion companion = NVEditorDelegate.Companion;
            File filesDir = nvcontext.getContext().getFilesDir();
            t.i(filesDir, "getFilesDir(...)");
            return companion.getInstance(filesDir);
        }

        @Override // com.narvii.video.services.IEditorPackFactory
        @NotNull
        public IPreviewPlayer getPreviewPlayer(@NotNull Context context) {
            t.j(context, "context");
            return new ExoEditorPreviewPlayer(context);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable IEditorPackFactory iEditorPackFactory) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public IEditorPackFactory create(@Nullable NVContext nVContext) {
        if (this.factory == null) {
            this.factory = new ExoEditorPackFactory();
        }
        IEditorPackFactory iEditorPackFactory = this.factory;
        t.g(iEditorPackFactory);
        return iEditorPackFactory;
    }
}
