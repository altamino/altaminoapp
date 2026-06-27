package com.narvii.editor.provider;

import android.content.Context;
import android.content.SharedPreferences;
import com.meicam.sdk.NvsStreamingContext;
import com.narvii.app.NVContext;
import com.narvii.editor.generator.MeisheSceneVideoGenerator;
import com.narvii.editor.player.MeiShePreviewPlayer;
import com.narvii.editor.player.MeisheTimelineManage;
import com.narvii.editor.provider.EditorPackServiceProvider;
import com.narvii.editor.provider.MeisheEditorDelegate;
import com.narvii.services.ServiceProvider;
import com.narvii.video.interfaces.IEditorRecycler;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ISceneVideoGenerator;
import com.narvii.video.services.IEditorPackFactory;
import ffmpeg.base.IEditor;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: EditorPackServiceProvider.kt */
/* loaded from: classes.dex */
public final class EditorPackServiceProvider implements ServiceProvider<IEditorPackFactory> {
    private IEditorPackFactory factory;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, IEditorPackFactory iEditorPackFactory) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, IEditorPackFactory iEditorPackFactory) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public IEditorPackFactory create(NVContext nVContext) {
        if (this.factory == null) {
            this.factory = new MeisheEditorPackFactory();
        }
        IEditorPackFactory iEditorPackFactory = this.factory;
        if (iEditorPackFactory != null) {
            return iEditorPackFactory;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* compiled from: EditorPackServiceProvider.kt */
    /* loaded from: classes2.dex */
    public static final class MeisheEditorPackFactory implements IEditorPackFactory {
        @Override // com.narvii.video.services.IEditorPackFactory
        public IEditorRecycler getVideoRecycler() {
            return MeisheEditorRecycler.Companion.getInstance();
        }

        @Override // com.narvii.video.services.IEditorPackFactory
        public ISceneVideoGenerator getVideoGenerator() {
            return MeisheSceneVideoGenerator.Companion.getInstance();
        }

        @Override // com.narvii.video.services.IEditorPackFactory
        public IEditor getIEditorDelegate(NVContext nvcontext) {
            Intrinsics.checkParameterIsNotNull(nvcontext, "nvcontext");
            Object service = nvcontext.getService("prefs");
            Intrinsics.checkExpressionValueIsNotNull(service, "nvcontext.getService(\"prefs\")");
            MeisheEditorDelegate.Companion companion = MeisheEditorDelegate.Companion;
            Context context = nvcontext.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "nvcontext.context");
            File filesDir = context.getFilesDir();
            Intrinsics.checkExpressionValueIsNotNull(filesDir, "nvcontext.context.filesDir");
            Context context2 = nvcontext.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context2, "nvcontext.context");
            File cacheDir = context2.getCacheDir();
            Intrinsics.checkExpressionValueIsNotNull(cacheDir, "nvcontext.context.cacheDir");
            return companion.getInstance(filesDir, cacheDir, (SharedPreferences) service);
        }

        @Override // com.narvii.video.services.IEditorPackFactory
        public IPreviewPlayer getPreviewPlayer(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new MeiShePreviewPlayer(context);
        }
    }

    /* compiled from: EditorPackServiceProvider.kt */
    /* loaded from: classes2.dex */
    public static final class MeisheEditorRecycler implements IEditorRecycler {
        public static final Companion Companion = new Companion(null);
        private static final Lazy instance$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<MeisheEditorRecycler>() { // from class: com.narvii.editor.provider.EditorPackServiceProvider$MeisheEditorRecycler$Companion$instance$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final EditorPackServiceProvider.MeisheEditorRecycler invoke() {
                return new EditorPackServiceProvider.MeisheEditorRecycler();
            }
        });

        /* compiled from: EditorPackServiceProvider.kt */
        public static final class Companion {
            static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "instance", "getInstance()Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;"))};

            public final MeisheEditorRecycler getInstance() {
                Lazy lazy = MeisheEditorRecycler.instance$delegate;
                Companion companion = MeisheEditorRecycler.Companion;
                KProperty kProperty = $$delegatedProperties[0];
                return (MeisheEditorRecycler) lazy.getValue();
            }

            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        @Override // com.narvii.video.interfaces.IEditorRecycler
        public void clearUnuseResource() {
            MeisheTimelineManage.Companion.getInstance().removeAllUnuseTimeline();
        }

        @Override // com.narvii.video.interfaces.IEditorRecycler
        public void clearCacheResources() {
            NvsStreamingContext.getInstance().clearCachedResources(false);
        }
    }
}
