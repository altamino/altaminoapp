package com.narvii.master.home.profile;

import android.os.Bundle;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.media.MediaPickCallbackManager;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.io.File;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class GlobalProfileMediaHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_AVATAR = 1;
    public static final int TYPE_BACKGROUND = 2;

    @NotNull
    private final File cache;

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final MediaPickerFragment mediaPicker;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final File getCache() {
        return this.cache;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @NotNull
    public final MediaPickerFragment getMediaPicker() {
        return this.mediaPicker;
    }

    public GlobalProfileMediaHelper(@NotNull NVContext ctx, @NotNull File cache, @NotNull MediaPickerFragment mediaPicker) {
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(cache, "cache");
        kotlin.jvm.internal.t.j(mediaPicker, "mediaPicker");
        this.ctx = ctx;
        this.cache = cache;
        this.mediaPicker = mediaPicker;
    }

    public final void pickBackground(@NotNull User user) {
        kotlin.jvm.internal.t.j(user, "user");
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.optionList = 12;
        mediaPickerConfiguration.isSingle = true;
        this.mediaPicker.pickCallback = MediaPickCallbackManager.GLOBAL_MEDIA_PICK;
        if (user.hasBackground()) {
            mediaPickerConfiguration.optionList |= 256;
            this.mediaPicker.deleteStringId = R.string.remove_background;
        }
        HashMap<String, Object> map = new HashMap<>();
        String strWriteAsString = JacksonUtils.writeAsString(user);
        kotlin.jvm.internal.t.i(strWriteAsString, "writeAsString(...)");
        map.put(GlobalProfileFragment.KEY_USER, strWriteAsString);
        map.put("type", 2);
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        mediaPickerFragment.pickCallbackParams = map;
        mediaPickerFragment.pickMedia(this.cache, bundle, mediaPickerConfiguration);
    }

    public final void pickIcon(@NotNull User user) {
        kotlin.jvm.internal.t.j(user, "user");
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.optionList = 14;
        mediaPickerConfiguration.isSingle = true;
        this.mediaPicker.pickCallback = MediaPickCallbackManager.GLOBAL_MEDIA_PICK;
        HashMap<String, Object> map = new HashMap<>();
        String strWriteAsString = JacksonUtils.writeAsString(user);
        kotlin.jvm.internal.t.i(strWriteAsString, "writeAsString(...)");
        map.put(GlobalProfileFragment.KEY_USER, strWriteAsString);
        map.put("type", 1);
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        mediaPickerFragment.pickCallbackParams = map;
        mediaPickerFragment.pickMedia(this.cache, bundle, mediaPickerConfiguration);
    }
}
