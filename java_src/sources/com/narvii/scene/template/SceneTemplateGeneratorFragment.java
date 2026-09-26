package com.narvii.scene.template;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Blog;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.notification.Notification;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftManager;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.helper.SceneListHelper;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.notification.CloseSceneTemplateObject;
import com.narvii.scene.template.data.SceneTemplateExtraInfo;
import com.narvii.scene.template.view.SceneTemplateMaterialSortLayout;
import com.narvii.scene.view.ProgressRingDialog;
import com.narvii.theme.ThemeImage;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.TimeUtils;
import com.narvii.util.Utils;
import com.narvii.util.WebMediaExtractor;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import com.narvii.videotemplate.Template;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PickerSelectedView;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import e8.q;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qa.y;
import w7.l0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public final class SceneTemplateGeneratorFragment extends NVFragment implements MediaPickerFragment.OnResultListener, SceneTemplateHelper.OnCompileListener, DialogInterface.OnCancelListener, SceneTemplateMaterialSortLayout.OnRemoveItemListener, SceneTemplateMaterialSortLayout.OnViewClickListener {
    public static final int CROP_IMAGE = 64833;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public Adapter adapter;

    @NotNull
    private q<? super Media, ? super Boolean, ? super Boolean, l0> addEntry;

    @Nullable
    private Blog blog;

    @Nullable
    private SelectedEntry curCropEntry;

    @Nullable
    private SelectedEntry curTrimEntry;

    @NotNull
    private final m downLoadImageHelper$delegate;

    @Nullable
    private String draftId;

    @NotNull
    private final m draftManager$delegate;

    @NotNull
    private final List<Entry> entryList = new ArrayList();

    @NotNull
    private final m loadingBar$delegate;
    private int maxSelectedEntryCount;
    public MediaPickerFragment mediaPicker;
    private int minSelectedEntryCount;

    @NotNull
    private final m photoManager$delegate;

    @NotNull
    private final m progressDialog$delegate;
    public RecyclerView recyclerView;

    @Nullable
    private SceneInfo sceneInfo;

    @NotNull
    private final m sceneListHelper$delegate;

    @NotNull
    private final m sceneTemplateHelper$delegate;

    @NotNull
    private final m selectImageDialog$delegate;
    public SceneTemplateMaterialSortLayout sortLayout;
    public Button submitButton;

    @Nullable
    private TemplateConfig templateConfig;

    @NotNull
    private String temporaryDraftId;

    @Nullable
    private WebMediaExtractor webMediaExtractor;

    public final class Adapter extends RecyclerView.Adapter<ViewHolder> {
        public Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SceneTemplateGeneratorFragment.this.getEntryList().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull ViewHolder holder, int i10) {
            t.j(holder, "holder");
            holder.updateView(SceneTemplateGeneratorFragment.this.getEntryList().get(i10));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = SceneTemplateGeneratorFragment.this;
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_media_picker, parent, false);
            t.i(viewInflate, "inflate(...)");
            return new ViewHolder(sceneTemplateGeneratorFragment, viewInflate);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final class Entry {
        private boolean canSelected;

        @NotNull
        private String id;

        @Nullable
        private Media media;
        private int selectCount;
        private boolean supportFormat;

        public Entry() {
            this(null, null, false, 0, false, 31, null);
        }

        public static /* synthetic */ Entry copy$default(Entry entry, String str, Media media, boolean z6, int i10, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = entry.id;
            }
            if ((i11 & 2) != 0) {
                media = entry.media;
            }
            Media media2 = media;
            if ((i11 & 4) != 0) {
                z6 = entry.canSelected;
            }
            boolean z11 = z6;
            if ((i11 & 8) != 0) {
                i10 = entry.selectCount;
            }
            int i12 = i10;
            if ((i11 & 16) != 0) {
                z10 = entry.supportFormat;
            }
            return entry.copy(str, media2, z11, i12, z10);
        }

        @NotNull
        public final String component1() {
            return this.id;
        }

        @Nullable
        public final Media component2() {
            return this.media;
        }

        public final boolean component3() {
            return this.canSelected;
        }

        public final int component4() {
            return this.selectCount;
        }

        public final boolean component5() {
            return this.supportFormat;
        }

        @NotNull
        public final Entry copy(@NotNull String id, @Nullable Media media, boolean z6, int i10, boolean z10) {
            t.j(id, "id");
            return new Entry(id, media, z6, i10, z10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return t.e(this.id, entry.id) && t.e(this.media, entry.media) && this.canSelected == entry.canSelected && this.selectCount == entry.selectCount && this.supportFormat == entry.supportFormat;
        }

        public final boolean getCanSelected() {
            return this.canSelected;
        }

        @NotNull
        public final String getId() {
            return this.id;
        }

        @Nullable
        public final Media getMedia() {
            return this.media;
        }

        public final int getSelectCount() {
            return this.selectCount;
        }

        public final boolean getSupportFormat() {
            return this.supportFormat;
        }

        public final boolean hasMedia() {
            return this.media != null;
        }

        public int hashCode() {
            int iHashCode = this.id.hashCode() * 31;
            Media media = this.media;
            return ((((((iHashCode + (media == null ? 0 : media.hashCode())) * 31) + androidx.compose.foundation.c.a(this.canSelected)) * 31) + this.selectCount) * 31) + androidx.compose.foundation.c.a(this.supportFormat);
        }

        public final boolean isSelected() {
            return this.selectCount > 0;
        }

        public final void setCanSelected(boolean z6) {
            this.canSelected = z6;
        }

        public final void setId(@NotNull String str) {
            t.j(str, "<set-?>");
            this.id = str;
        }

        public final void setMedia(@Nullable Media media) {
            this.media = media;
        }

        public final void setSelectCount(int i10) {
            this.selectCount = i10;
        }

        public final void setSupportFormat(boolean z6) {
            this.supportFormat = z6;
        }

        @NotNull
        public String toString() {
            return "Entry(id=" + this.id + ", media=" + this.media + ", canSelected=" + this.canSelected + ", selectCount=" + this.selectCount + ", supportFormat=" + this.supportFormat + ')';
        }

        public Entry(@NotNull String id, @Nullable Media media, boolean z6, int i10, boolean z10) {
            t.j(id, "id");
            this.id = id;
            this.media = media;
            this.canSelected = z6;
            this.selectCount = i10;
            this.supportFormat = z10;
        }

        public final boolean equalsSelectedEntry(@NotNull SelectedEntry selectedEntry) {
            t.j(selectedEntry, "selectedEntry");
            return u.P(selectedEntry.getId(), this.id, false, 2, null);
        }

        @NotNull
        public final String getSelectId() {
            return this.id + 'x' + this.selectCount;
        }

        public final boolean isImage() {
            Media media = this.media;
            if (media != null) {
                return media.isImage();
            }
            return false;
        }

        public final boolean isVideo() {
            Media media = this.media;
            if (media != null) {
                return media.isVideo();
            }
            return false;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Entry(String str, Media media, boolean z6, int i10, boolean z10, int i11, kotlin.jvm.internal.k kVar) {
            if ((i11 & 1) != 0) {
                str = UUID.randomUUID().toString();
                t.i(str, "toString(...)");
            }
            this(str, (i11 & 2) != 0 ? null : media, (i11 & 4) != 0 ? true : z6, (i11 & 8) != 0 ? 0 : i10, (i11 & 16) != 0 ? false : z10);
        }

        public final boolean isHttpEntry() {
            if (!hasMedia()) {
                return false;
            }
            Media media = this.media;
            t.g(media);
            if (TextUtils.isEmpty(media.url)) {
                return false;
            }
            Media media2 = this.media;
            t.g(media2);
            String url = media2.url;
            t.i(url, "url");
            if (!kotlin.text.t.K(url, y.HTTP, false, 2, null)) {
                Media media3 = this.media;
                t.g(media3);
                String url2 = media3.url;
                t.i(url2, "url");
                if (!kotlin.text.t.K(url2, y.HTTPS, false, 2, null)) {
                    return false;
                }
            }
            return true;
        }
    }

    public final class GridItemDecoration extends RecyclerView.ItemDecoration {
        public GridItemDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
            t.j(outRect, "outRect");
            t.j(view, "view");
            t.j(parent, "parent");
            t.j(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int iDpToPx = (int) Utils.dpToPx(NVApplication.instance(), 2.0f);
            outRect.set(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        }
    }

    public interface ItemClickListener {
        void onClick(@NotNull View view, int i10, @NotNull Entry entry);
    }

    public static final class SelectedEntry {

        @Nullable
        private ThemeImage crop;

        @NotNull
        private String id;

        @Nullable
        private Media media;

        @Nullable
        private Media previewMedia;
        private int progress;
        private int state;
        private long videoTrimEnd;
        private long videoTrimStart;

        public SelectedEntry() {
            this(null, null, 0, 0L, 0L, 0, null, null, 255, null);
        }

        @NotNull
        public final String component1() {
            return this.id;
        }

        @Nullable
        public final Media component2() {
            return this.media;
        }

        public final int component3() {
            return this.state;
        }

        public final long component4() {
            return this.videoTrimStart;
        }

        public final long component5() {
            return this.videoTrimEnd;
        }

        public final int component6() {
            return this.progress;
        }

        @Nullable
        public final ThemeImage component7() {
            return this.crop;
        }

        @Nullable
        public final Media component8() {
            return this.previewMedia;
        }

        @NotNull
        public final SelectedEntry copy(@NotNull String id, @Nullable Media media, int i10, long j6, long j10, int i11, @Nullable ThemeImage themeImage, @Nullable Media media2) {
            t.j(id, "id");
            return new SelectedEntry(id, media, i10, j6, j10, i11, themeImage, media2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectedEntry)) {
                return false;
            }
            SelectedEntry selectedEntry = (SelectedEntry) obj;
            return t.e(this.id, selectedEntry.id) && t.e(this.media, selectedEntry.media) && this.state == selectedEntry.state && this.videoTrimStart == selectedEntry.videoTrimStart && this.videoTrimEnd == selectedEntry.videoTrimEnd && this.progress == selectedEntry.progress && t.e(this.crop, selectedEntry.crop) && t.e(this.previewMedia, selectedEntry.previewMedia);
        }

        @Nullable
        public final ThemeImage getCrop() {
            return this.crop;
        }

        @NotNull
        public final String getId() {
            return this.id;
        }

        @Nullable
        public final Media getMedia() {
            return this.media;
        }

        @Nullable
        public final Media getPreviewMedia() {
            return this.previewMedia;
        }

        public final int getProgress() {
            return this.progress;
        }

        public final int getState() {
            return this.state;
        }

        public final long getVideoTrimEnd() {
            return this.videoTrimEnd;
        }

        public final long getVideoTrimStart() {
            return this.videoTrimStart;
        }

        public int hashCode() {
            int iHashCode = this.id.hashCode() * 31;
            Media media = this.media;
            int iHashCode2 = (((((((((iHashCode + (media == null ? 0 : media.hashCode())) * 31) + this.state) * 31) + i.a.a(this.videoTrimStart)) * 31) + i.a.a(this.videoTrimEnd)) * 31) + this.progress) * 31;
            ThemeImage themeImage = this.crop;
            int iHashCode3 = (iHashCode2 + (themeImage == null ? 0 : themeImage.hashCode())) * 31;
            Media media2 = this.previewMedia;
            return iHashCode3 + (media2 != null ? media2.hashCode() : 0);
        }

        public final boolean isEmpty() {
            return this.state == 1;
        }

        public final void setCrop(@Nullable ThemeImage themeImage) {
            this.crop = themeImage;
        }

        public final void setId(@NotNull String str) {
            t.j(str, "<set-?>");
            this.id = str;
        }

        public final void setMedia(@Nullable Media media) {
            this.media = media;
        }

        public final void setPreviewMedia(@Nullable Media media) {
            this.previewMedia = media;
        }

        public final void setProgress(int i10) {
            this.progress = i10;
        }

        public final void setState(int i10) {
            this.state = i10;
        }

        public final void setVideoTrimEnd(long j6) {
            this.videoTrimEnd = j6;
        }

        public final void setVideoTrimStart(long j6) {
            this.videoTrimStart = j6;
        }

        @NotNull
        public String toString() {
            return "SelectedEntry(id=" + this.id + ", media=" + this.media + ", state=" + this.state + ", videoTrimStart=" + this.videoTrimStart + ", videoTrimEnd=" + this.videoTrimEnd + ", progress=" + this.progress + ", crop=" + this.crop + ", previewMedia=" + this.previewMedia + ')';
        }

        public SelectedEntry(@NotNull String id, @Nullable Media media, int i10, long j6, long j10, int i11, @Nullable ThemeImage themeImage, @Nullable Media media2) {
            t.j(id, "id");
            this.id = id;
            this.media = media;
            this.state = i10;
            this.videoTrimStart = j6;
            this.videoTrimEnd = j10;
            this.progress = i11;
            this.crop = themeImage;
            this.previewMedia = media2;
        }

        public final void copy(@NotNull SelectedEntry entry) {
            t.j(entry, "entry");
            this.id = entry.id;
            this.media = entry.media;
            this.state = entry.state;
            this.videoTrimStart = entry.videoTrimStart;
            this.videoTrimEnd = entry.videoTrimEnd;
            this.progress = entry.progress;
            this.crop = entry.crop;
            this.previewMedia = entry.previewMedia;
        }

        public final boolean isImage() {
            Media media = this.media;
            if (media != null) {
                return media.isImage();
            }
            return false;
        }

        public final boolean isVideo() {
            Media media = this.media;
            if (media != null) {
                return media.isVideo();
            }
            return false;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ SelectedEntry(String str, Media media, int i10, long j6, long j10, int i11, ThemeImage themeImage, Media media2, int i12, kotlin.jvm.internal.k kVar) {
            String string;
            if ((i12 & 1) != 0) {
                string = UUID.randomUUID().toString();
                t.i(string, "toString(...)");
            } else {
                string = str;
            }
            this(string, (i12 & 2) != 0 ? null : media, (i12 & 4) != 0 ? 1 : i10, (i12 & 8) != 0 ? 0L : j6, (i12 & 16) != 0 ? 15000L : j10, (i12 & 32) != 0 ? 0 : i11, (i12 & 64) != 0 ? null : themeImage, (i12 & 128) == 0 ? media2 : null);
        }
    }

    public final class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, NVImageView.OnImageChangedListener {

        @NotNull
        private final View addLayout;

        @Nullable
        private Entry entry;

        @NotNull
        private final ThumbImageView image;

        @NotNull
        private final View maskView;

        @NotNull
        private final PickerSelectedView selectView;
        final /* synthetic */ SceneTemplateGeneratorFragment this$0;

        @NotNull
        private final View videoLabel;

        @NotNull
        private final TextView videoTime;

        @NotNull
        public final View getAddLayout() {
            return this.addLayout;
        }

        @Nullable
        public final Entry getEntry() {
            return this.entry;
        }

        @NotNull
        public final ThumbImageView getImage() {
            return this.image;
        }

        @NotNull
        public final View getMaskView() {
            return this.maskView;
        }

        @NotNull
        public final PickerSelectedView getSelectView() {
            return this.selectView;
        }

        @NotNull
        public final View getVideoLabel() {
            return this.videoLabel;
        }

        @NotNull
        public final TextView getVideoTime() {
            return this.videoTime;
        }

        public final void setEntry(@Nullable Entry entry) {
            this.entry = entry;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment, View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
            this.this$0 = sceneTemplateGeneratorFragment;
            View viewFindViewById = itemView.findViewById(R.id.image_view);
            t.i(viewFindViewById, "findViewById(...)");
            ThumbImageView thumbImageView = (ThumbImageView) viewFindViewById;
            this.image = thumbImageView;
            View viewFindViewById2 = itemView.findViewById(R.id.select);
            t.i(viewFindViewById2, "findViewById(...)");
            this.selectView = (PickerSelectedView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.mask_view);
            t.i(viewFindViewById3, "findViewById(...)");
            this.maskView = viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R.id.layout_add);
            t.i(viewFindViewById4, "findViewById(...)");
            this.addLayout = viewFindViewById4;
            View viewFindViewById5 = itemView.findViewById(R.id.media_picker_label);
            t.i(viewFindViewById5, "findViewById(...)");
            this.videoLabel = viewFindViewById5;
            View viewFindViewById6 = itemView.findViewById(R.id.media_picker_video_time);
            t.i(viewFindViewById6, "findViewById(...)");
            this.videoTime = (TextView) viewFindViewById6;
            thumbImageView.setOnClickListener(this);
            viewFindViewById4.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@Nullable View view) {
            Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
            int i10 = R.id.image_view;
            if (numValueOf == null || numValueOf.intValue() != i10) {
                int i11 = R.id.layout_add;
                if (numValueOf != null && numValueOf.intValue() == i11) {
                    this.this$0.pickResource();
                    return;
                }
                return;
            }
            Entry entry = this.entry;
            if (entry != null) {
                SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = this.this$0;
                if (entry.isSelected()) {
                    sceneTemplateGeneratorFragment.getSortLayout().deleteEntry(entry.getSelectId());
                } else if (sceneTemplateGeneratorFragment.getMaxSelectedEntryCount() <= sceneTemplateGeneratorFragment.getSortLayout().getDatas().size()) {
                    sceneTemplateGeneratorFragment.showShortToast(sceneTemplateGeneratorFragment.getString(R.string.reached_the_maximum_number));
                } else if (sceneTemplateGeneratorFragment.selectedEntry(entry)) {
                    updateSelectStatus(entry);
                }
            }
        }

        public final void updateView(@NotNull Entry entry) {
            t.j(entry, "entry");
            this.entry = entry;
            if (entry.hasMedia()) {
                this.image.setVisibility(0);
                this.addLayout.setVisibility(8);
                if (entry.isVideo()) {
                    TextView textView = this.videoTime;
                    Media media = entry.getMedia();
                    textView.setText(TimeUtils.formatTimeDuration(media != null ? media.duration : 0L));
                    this.videoTime.setVisibility(0);
                    this.videoLabel.setVisibility(0);
                    ThumbImageView thumbImageView = this.image;
                    Media media2 = entry.getMedia();
                    thumbImageView.setImageUrl(media2 != null ? media2.coverImage : null);
                } else {
                    this.image.setImageMedia(entry.getMedia());
                    this.videoTime.setVisibility(8);
                    this.videoLabel.setVisibility(8);
                }
                if (this.this$0.getWebMediaExtractor() != null) {
                    this.image.setTag(entry);
                    this.image.setOnImageChangedListener(this);
                }
            } else {
                this.image.setVisibility(8);
                this.image.setTag(null);
                this.addLayout.setVisibility(0);
                this.videoTime.setVisibility(8);
                this.videoLabel.setVisibility(8);
            }
            updateSelectStatus(entry);
            this.maskView.setVisibility((entry.getCanSelected() || !entry.hasMedia()) ? 8 : 0);
        }

        private final void updateSelectStatus(Entry entry) {
            if (entry.hasMedia()) {
                this.selectView.setVisibility(0);
                this.selectView.update(entry.isSelected());
            } else {
                this.selectView.setVisibility(8);
            }
        }

        @Override // com.narvii.widget.NVImageView.OnImageChangedListener
        public void onImageChanged(@NotNull NVImageView view, int i10, @Nullable Media media) {
            t.j(view, "view");
            if ((view.getTag() instanceof Entry) && i10 == 2) {
                List<Entry> entryList = this.this$0.getEntryList();
                Object tag = view.getTag();
                t.h(tag, "null cannot be cast to non-null type com.narvii.scene.template.SceneTemplateGeneratorFragment.Entry");
                entryList.remove((Entry) tag);
                this.this$0.getAdapter().notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSupportFormat(Media media) {
        if (media.isVideo()) {
            TemplateConfig templateConfig = this.templateConfig;
            if (templateConfig != null) {
                return templateConfig.videoEnabled;
            }
            return false;
        }
        String str = media.url;
        if (str == null) {
            str = "";
        }
        if (isSupportFormat(str)) {
            return true;
        }
        String str2 = media.fileName;
        return isSupportFormat(str2 != null ? str2 : "");
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final q<Media, Boolean, Boolean, l0> getAddEntry() {
        return this.addEntry;
    }

    @Nullable
    public final Blog getBlog() {
        return this.blog;
    }

    @Nullable
    public final SelectedEntry getCurCropEntry() {
        return this.curCropEntry;
    }

    @Nullable
    public final SelectedEntry getCurTrimEntry() {
        return this.curTrimEntry;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Nullable
    public final String getDraftId() {
        return this.draftId;
    }

    @NotNull
    public final List<Entry> getEntryList() {
        return this.entryList;
    }

    public final int getMaxSelectedEntryCount() {
        return this.maxSelectedEntryCount;
    }

    public final int getMinSelectedEntryCount() {
        return this.minSelectedEntryCount;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "video_template_media_picker";
    }

    @Nullable
    public final SceneInfo getSceneInfo() {
        return this.sceneInfo;
    }

    @Nullable
    public final TemplateConfig getTemplateConfig() {
        return this.templateConfig;
    }

    @NotNull
    public final String getTemporaryDraftId() {
        return this.temporaryDraftId;
    }

    @Nullable
    public final WebMediaExtractor getWebMediaExtractor() {
        return this.webMediaExtractor;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public final void setAdapter(@NotNull Adapter adapter) {
        t.j(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final void setAddEntry(@NotNull q<? super Media, ? super Boolean, ? super Boolean, l0> qVar) {
        t.j(qVar, "<set-?>");
        this.addEntry = qVar;
    }

    public final void setBlog(@Nullable Blog blog) {
        this.blog = blog;
    }

    public final void setCurCropEntry(@Nullable SelectedEntry selectedEntry) {
        this.curCropEntry = selectedEntry;
    }

    public final void setCurTrimEntry(@Nullable SelectedEntry selectedEntry) {
        this.curTrimEntry = selectedEntry;
    }

    public final void setDraftId(@Nullable String str) {
        this.draftId = str;
    }

    public final void setMaxSelectedEntryCount(int i10) {
        this.maxSelectedEntryCount = i10;
    }

    public final void setMediaPicker(@NotNull MediaPickerFragment mediaPickerFragment) {
        t.j(mediaPickerFragment, "<set-?>");
        this.mediaPicker = mediaPickerFragment;
    }

    public final void setMinSelectedEntryCount(int i10) {
        this.minSelectedEntryCount = i10;
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView) {
        t.j(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final void setSceneInfo(@Nullable SceneInfo sceneInfo) {
        this.sceneInfo = sceneInfo;
    }

    public final void setSortLayout(@NotNull SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout) {
        t.j(sceneTemplateMaterialSortLayout, "<set-?>");
        this.sortLayout = sceneTemplateMaterialSortLayout;
    }

    public final void setSubmitButton(@NotNull Button button) {
        t.j(button, "<set-?>");
        this.submitButton = button;
    }

    public final void setTemplateConfig(@Nullable TemplateConfig templateConfig) {
        this.templateConfig = templateConfig;
    }

    public final void setTemporaryDraftId(@NotNull String str) {
        t.j(str, "<set-?>");
        this.temporaryDraftId = str;
    }

    public final void setWebMediaExtractor(@Nullable WebMediaExtractor webMediaExtractor) {
        this.webMediaExtractor = webMediaExtractor;
    }

    private final boolean checkSubmit() {
        if (this.templateConfig == null) {
            return false;
        }
        int size = getSortLayout().getDatas().size();
        TemplateConfig templateConfig = this.templateConfig;
        t.g(templateConfig);
        return size >= templateConfig.minInputCount;
    }

    private final Entry getAddMoreEntry() {
        return new Entry(null, null, false, 0, false, 31, null);
    }

    private final File getCacheDir() {
        File file = new File(requireContext().getCacheDir(), "storyTemplate");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private final SceneTemplateImageDownloadHelper getDownLoadImageHelper() {
        return (SceneTemplateImageDownloadHelper) this.downLoadImageHelper$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getDraftFile() {
        File file = TextUtils.isEmpty(this.draftId) ? new File(SceneTemplateHelperKt.getTemporaryDraftRootDir(), this.temporaryDraftId) : getDraftManager().getDir(this.draftId);
        if (!file.exists()) {
            file.mkdirs();
        }
        t.g(file);
        return file;
    }

    private final List<Media> getEntryMediaList() {
        List<Entry> list = this.entryList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Entry entry = (Entry) obj;
            if (entry.isSelected() && entry.hasMedia()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Media media = ((Entry) it.next()).getMedia();
            t.g(media);
            arrayList2.add(media);
        }
        return d0.W0(arrayList2);
    }

    private final SceneListHelper getSceneListHelper() {
        return (SceneListHelper) this.sceneListHelper$delegate.getValue();
    }

    private final SceneTemplateHelper getSceneTemplateHelper() {
        return (SceneTemplateHelper) this.sceneTemplateHelper$delegate.getValue();
    }

    private final ACMAlertDialog getSelectImageDialog() {
        return (ACMAlertDialog) this.selectImageDialog$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pickResource() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.maximum = 20;
        mediaPickerConfiguration.optionList = 24;
        mediaPickerConfiguration.galleryVideoMode = 0;
        mediaPickerConfiguration.galleryPhotoMode = 1;
        getMediaPicker().pickCallback = null;
        getMediaPicker().pickCallbackParams = null;
        getMediaPicker().pickMedia((File) null, bundle, mediaPickerConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean selectedEntry(Entry entry) {
        if (this.maxSelectedEntryCount <= getSortLayout().getDatas().size()) {
            return false;
        }
        if (!entry.getCanSelected()) {
            showShortToast(entry.isVideo() ? R.string.invalid_input : R.string.invalid_input_image);
            return false;
        }
        entry.setSelectCount(entry.getSelectCount() + 1);
        Entry entryCopy$default = Entry.copy$default(entry, null, null, false, 0, false, 31, null);
        entryCopy$default.setId(entry.getSelectId());
        int i10 = 4;
        if (entryCopy$default.isHttpEntry() && !entry.isVideo()) {
            i10 = 2;
        }
        String id = entryCopy$default.getId();
        Media media = (Media) JacksonUtils.readAs(JacksonUtils.writeAsString(entryCopy$default.getMedia()), Media.class);
        long j6 = 0;
        TemplateConfig templateConfig = this.templateConfig;
        getSortLayout().addData(new SelectedEntry(id, media, i10, j6, templateConfig != null ? templateConfig.maxInputLengthMs : 15000L, 0, null, null, 224, null));
        invalidateOptionsMenu();
        if (i10 == 2) {
            getDownLoadImageHelper().downloadMedia(entryCopy$default);
        }
        return true;
    }

    private final void sendNotification(SceneInfo sceneInfo) {
        CloseSceneTemplateObject closeSceneTemplateObject = new CloseSceneTemplateObject();
        closeSceneTemplateObject.id = sceneInfo.id;
        NotificationUtils.sendNotification(this, new Notification("new", closeSceneTemplateObject), false);
    }

    @Override // com.narvii.app.NVFragment
    @NotNull
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(1908255);
    }

    @NotNull
    public final Adapter getAdapter() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        t.B("adapter");
        return null;
    }

    @NotNull
    public final DraftManager getDraftManager() {
        Object value = this.draftManager$delegate.getValue();
        t.i(value, "getValue(...)");
        return (DraftManager) value;
    }

    @NotNull
    public final ProgressDialog getLoadingBar() {
        return (ProgressDialog) this.loadingBar$delegate.getValue();
    }

    @NotNull
    public final MediaPickerFragment getMediaPicker() {
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        if (mediaPickerFragment != null) {
            return mediaPickerFragment;
        }
        t.B("mediaPicker");
        return null;
    }

    @NotNull
    public final PhotoManager getPhotoManager() {
        Object value = this.photoManager$delegate.getValue();
        t.i(value, "getValue(...)");
        return (PhotoManager) value;
    }

    @NotNull
    public final ProgressRingDialog getProgressDialog() {
        return (ProgressRingDialog) this.progressDialog$delegate.getValue();
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        t.B("recyclerView");
        return null;
    }

    @NotNull
    public final SceneTemplateMaterialSortLayout getSortLayout() {
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
        if (sceneTemplateMaterialSortLayout != null) {
            return sceneTemplateMaterialSortLayout;
        }
        t.B("sortLayout");
        return null;
    }

    @NotNull
    public final String getStringParam(@NotNull String key, @Nullable Bundle bundle) {
        t.j(key, "key");
        String string = bundle != null ? bundle.getString(key) : null;
        if (string != null) {
            return string;
        }
        String stringParam = getStringParam(key);
        return stringParam == null ? "" : stringParam;
    }

    @NotNull
    public final Button getSubmitButton() {
        Button button = this.submitButton;
        if (button != null) {
            return button;
        }
        t.B("submitButton");
        return null;
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileFail(@NotNull SceneTemplateHelper helper, int i10, @Nullable String str, @Nullable Throwable th) {
        t.j(helper, "helper");
        if (isDestoryed()) {
            return;
        }
        if (getProgressDialog().isShowing()) {
            getProgressDialog().dismiss();
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.addButton(R.string.got_it, null);
        aCMAlertDialog.show();
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileFinished(@NotNull SceneTemplateHelper helper, @NotNull Template template, @NotNull String filePath, @NotNull StreamInfo streamInfo) {
        t.j(helper, "helper");
        t.j(template, "template");
        t.j(filePath, "filePath");
        t.j(streamInfo, "streamInfo");
        if (isDestoryed()) {
            return;
        }
        if (getProgressDialog().isShowing()) {
            getProgressDialog().dismiss();
        }
        if (this.sceneInfo != null) {
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = filePath;
            aVClipInfoPack.originalInputPath = filePath;
            aVClipInfoPack.fileName = new File(filePath).getName();
            aVClipInfoPack.trimStartInMs = 0;
            aVClipInfoPack.trimEndInMs = Math.min(streamInfo.durationInMs, SceneConstant.getMaxSceneLengthMs());
            aVClipInfoPack.videoSource = 16;
            SceneInfo sceneInfo = this.sceneInfo;
            t.g(sceneInfo);
            sceneInfo.videoClips = v.g(aVClipInfoPack);
            SceneInfo sceneInfo2 = this.sceneInfo;
            t.g(sceneInfo2);
            sceneInfo2.template = template;
            getSceneListHelper().launchSceneEditor(this.sceneInfo, false, getDraftFile().getAbsolutePath(), 3, "");
            SceneInfo sceneInfo3 = this.sceneInfo;
            t.g(sceneInfo3);
            sendNotification(sceneInfo3);
        } else {
            Blog blog = this.blog;
            Context context = getContext();
            t.i(context, "getContext(...)");
            getSceneListHelper().launchSceneEditor(SceneTemplateGeneratorFragmentKt.blogConvertToScene(blog, context, filePath, template, streamInfo), false, getDraftFile().getAbsolutePath(), 2, JacksonUtils.writeAsString(this.blog));
        }
        finish();
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileProgress(@NotNull SceneTemplateHelper helper, int i10, int i11) {
        t.j(helper, "helper");
        getProgressDialog().updateProgress(i10);
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileStart(@NotNull SceneTemplateHelper helper) {
        t.j(helper, "helper");
        getProgressDialog().show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        MenuItem actionView;
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_btn, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.actionbar_right_btn_btn);
        t.i(viewFindViewById, "findViewById(...)");
        setSubmitButton((Button) viewFindViewById);
        ViewGroup.LayoutParams layoutParams = getSubmitButton().getLayoutParams();
        t.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginEnd(Utils.dpToPxInt(getContext(), 10.0f));
        getSubmitButton().setText(R.string.next);
        getSubmitButton().setTextColor(-1);
        getSubmitButton().setBackground(NVActivity.getRightButtonBackground(-16723276));
        getSubmitButton().setLayoutParams(marginLayoutParams);
        getSubmitButton().setOnClickListener(new OnPreventRepeatedClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SceneTemplateGeneratorFragment.onCreateOptionsMenu$lambda$6(this.f2682a, view);
            }
        }));
        getSubmitButton().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SceneTemplateGeneratorFragment.onCreateOptionsMenu$lambda$7(this.f2683a, view);
            }
        });
        int i10 = R.string.post_submit;
        MenuItem menuItemAdd = menu.add(0, i10, 0, i10);
        if (menuItemAdd == null || (actionView = menuItemAdd.setActionView(viewInflate)) == null) {
            return;
        }
        actionView.setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_scene_template_generator, viewGroup, false);
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnViewClickListener
    public void onItemClick(@NotNull SelectedEntry entry) {
        t.j(entry, "entry");
        if (entry.isVideo()) {
            this.curTrimEntry = entry;
            TemplateConfig templateConfig = this.templateConfig;
            long j6 = templateConfig != null ? templateConfig.maxInputLengthMs : 5000L;
            Media media = entry.getMedia();
            t.g(media);
            MediaPreEditingActivityKt.startPreEditActivity(this, media, entry.getVideoTrimStart(), entry.getVideoTrimEnd(), j6, 1);
            return;
        }
        if (entry.isImage() && entry.getState() == 4) {
            Media media2 = entry.getMedia();
            if (Utils.isGif(media2 != null ? media2.url : null)) {
                Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                intent.putExtra("list", JacksonUtils.writeAsString(Collections.singletonList(entry.getMedia())));
                intent.putExtra("position", 0);
                intent.putExtra("preview", true);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                return;
            }
            this.curCropEntry = entry;
            File file = new File(getDraftFile().getAbsolutePath() + File.separator, "image_" + UUID.randomUUID() + ".jpg");
            StringBuilder sb = new StringBuilder();
            sb.append("ndc://fragment/");
            sb.append(CropTemplateImageFragment.class.getName());
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(sb.toString()));
            Media media3 = entry.getMedia();
            intent2.putExtra("imageUrl", media3 != null ? media3.url : null);
            intent2.putExtra("imageId", entry.getId());
            intent2.putExtra("outputUrl", getPhotoManager().getUri(file));
            if (entry.getCrop() != null) {
                intent2.putExtra("themeImage", JacksonUtils.writeAsString(entry.getCrop()));
            }
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent2, CROP_IMAGE);
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable final List<Media> list, @Nullable Bundle bundle) {
        if (list != null) {
            Iterator<T> it = list.iterator();
            boolean z6 = false;
            while (it.hasNext()) {
                if (((Media) it.next()).isVideo()) {
                    z6 = true;
                }
            }
            if (z6) {
                getLoadingBar().show();
                AsyncTask.execute(new Runnable() { // from class: com.narvii.scene.template.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        SceneTemplateGeneratorFragment.onPickMediaResult$lambda$17(this.f2680a, list);
                    }
                });
                return;
            }
        }
        if (list != null) {
            for (Media media : list) {
                q<? super Media, ? super Boolean, ? super Boolean, l0> qVar = this.addEntry;
                Boolean bool = Boolean.TRUE;
                qVar.invoke(media, bool, bool);
            }
        }
        updateItemView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(@NotNull Menu menu) {
        t.j(menu, "menu");
        boolean zCheckSubmit = checkSubmit();
        getSubmitButton().setEnabled(zCheckSubmit);
        getSubmitButton().setAlpha(zCheckSubmit ? 1.0f : 0.5f);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnRemoveItemListener
    public void onRemove(@NotNull SelectedEntry entry) {
        t.j(entry, "entry");
        unSelectEntry(entry);
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnViewClickListener
    public void onRetryClick(@NotNull SelectedEntry entry) {
        t.j(entry, "entry");
        getDownLoadImageHelper().downloadMedia(entry);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("blogPost", JacksonUtils.writeAsString(this.blog));
        outState.putString("templateConfig", JacksonUtils.writeAsString(this.templateConfig));
        outState.putString("sceneInfo", JacksonUtils.writeAsString(this.sceneInfo));
        outState.putString("draftId", this.draftId);
    }

    public SceneTemplateGeneratorFragment() {
        String string = UUID.randomUUID().toString();
        t.i(string, "toString(...)");
        this.temporaryDraftId = string;
        this.draftManager$delegate = o.a(new SceneTemplateGeneratorFragment$draftManager$2(this));
        this.photoManager$delegate = o.a(new SceneTemplateGeneratorFragment$photoManager$2(this));
        this.selectImageDialog$delegate = o.a(new SceneTemplateGeneratorFragment$selectImageDialog$2(this));
        this.sceneTemplateHelper$delegate = o.a(new SceneTemplateGeneratorFragment$sceneTemplateHelper$2(this));
        this.downLoadImageHelper$delegate = o.a(new SceneTemplateGeneratorFragment$downLoadImageHelper$2(this));
        this.progressDialog$delegate = o.a(new SceneTemplateGeneratorFragment$progressDialog$2(this));
        this.loadingBar$delegate = o.a(new SceneTemplateGeneratorFragment$loadingBar$2(this));
        this.addEntry = new SceneTemplateGeneratorFragment$addEntry$1(this);
        this.sceneListHelper$delegate = o.a(new SceneTemplateGeneratorFragment$sceneListHelper$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$4$lambda$2(SceneTemplateGeneratorFragment this$0, DialogInterface dialogInterface) {
        t.j(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$5(SceneTemplateGeneratorFragment this$0) {
        t.j(this$0, "this$0");
        this$0.pickResource();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateOptionsMenu$lambda$6(SceneTemplateGeneratorFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.submit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateOptionsMenu$lambda$7(SceneTemplateGeneratorFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.submit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPickMediaResult$lambda$17(final SceneTemplateGeneratorFragment this$0, final List list) {
        boolean z6;
        t.j(this$0, "this$0");
        final ArrayList arrayList = new ArrayList();
        VideoManager videoManager = (VideoManager) this$0.getService("videoManager");
        PhotoManager photoManager = (PhotoManager) this$0.getService("photo");
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Media media = (Media) it.next();
                if (media.isVideo()) {
                    String absolutePath = photoManager.getPath(media.url).getAbsolutePath();
                    t.i(absolutePath, "getAbsolutePath(...)");
                    StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(absolutePath);
                    if (streamInfoFetchStreamInfoSync.isVCodecInWhiteList() && streamInfoFetchStreamInfoSync.isResolutionValid()) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    arrayList.add(Boolean.valueOf(z6));
                } else {
                    arrayList.add(Boolean.TRUE);
                }
            }
        }
        Utils.post(new Runnable() { // from class: com.narvii.scene.template.h
            @Override // java.lang.Runnable
            public final void run() {
                SceneTemplateGeneratorFragment.onPickMediaResult$lambda$17$lambda$16(this.f2686a, list, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPickMediaResult$lambda$17$lambda$16(SceneTemplateGeneratorFragment this$0, List list, ArrayList validFormatList) {
        t.j(this$0, "this$0");
        t.j(validFormatList, "$validFormatList");
        this$0.getLoadingBar().dismiss();
        t.g(list);
        Iterator it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            Media media = (Media) it.next();
            q<? super Media, ? super Boolean, ? super Boolean, l0> qVar = this$0.addEntry;
            Boolean bool = Boolean.TRUE;
            Object obj = validFormatList.get(i10);
            t.i(obj, "get(...)");
            qVar.invoke(media, bool, obj);
            i10 = i11;
        }
        this$0.updateItemView();
    }

    private final void unSelectEntry(SelectedEntry selectedEntry) {
        Object next;
        getDownLoadImageHelper().cancelRequest(selectedEntry);
        Iterator<T> it = this.entryList.iterator();
        do {
            if (it.hasNext()) {
                next = it.next();
            } else {
                next = null;
                break;
            }
        } while (!((Entry) next).equalsSelectedEntry(selectedEntry));
        Entry entry = (Entry) next;
        if (entry != null) {
            entry.setSelectCount(entry.getSelectCount() - 1);
            updateItemView();
        }
    }

    private final void updateItemView() {
        getAdapter().notifyDataSetChanged();
        invalidateOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSelectEntry(SelectedEntry selectedEntry) {
        getSortLayout().updateData(selectedEntry);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i11 == -1 && intent != null) {
            if (i10 != 64818) {
                if (i10 == 64833) {
                    SelectedEntry selectedEntry = this.curCropEntry;
                    if (selectedEntry != null) {
                        ThemeImage themeImage = (ThemeImage) JacksonUtils.readAs(intent.getStringExtra("themeImage"), ThemeImage.class);
                        String stringExtra = intent.getStringExtra("imageId");
                        Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("previewMedia"), Media.class);
                        if (TextUtils.equals(stringExtra, selectedEntry.getId())) {
                            selectedEntry.setCrop(themeImage);
                            selectedEntry.setPreviewMedia(media);
                        }
                        getSortLayout().updateData(selectedEntry, true);
                    }
                    this.curCropEntry = null;
                    return;
                }
                return;
            }
            SelectedEntry selectedEntry2 = this.curTrimEntry;
            if (selectedEntry2 != null) {
                selectedEntry2.setVideoTrimStart(intent.getLongExtra("trimStartTime", 0L));
                selectedEntry2.setVideoTrimEnd(intent.getLongExtra("trimEndTime", 0L));
                getSortLayout().updateData(selectedEntry2);
            }
            this.curTrimEntry = null;
        }
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnViewClickListener
    public void onBackgroundItemClick() {
        if (!getSelectImageDialog().isShowing()) {
            getSelectImageDialog().show();
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(@Nullable DialogInterface dialogInterface) {
        getSceneTemplateHelper().cancel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.narvii.scene.template.SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1, java.lang.Runnable] */
    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        MediaPickerFragment mediaPickerFragment;
        LinkSummary linkSummary;
        String str;
        List<Media> list;
        super.onCreate(bundle);
        setActionBarTitleColor(ContextCompat.getColor(getContext(), R.color.white));
        setTitle(R.string.photos_or_videos);
        setHasOptionsMenu(true);
        if (bundle == null) {
            this.blog = (Blog) JacksonUtils.readAs(getStringParam("blogPost"), Blog.class);
            this.templateConfig = (TemplateConfig) JacksonUtils.readAs(getStringParam("templateConfig"), TemplateConfig.class);
            this.sceneInfo = (SceneInfo) JacksonUtils.readAs(getStringParam("sceneInfo"), SceneInfo.class);
            this.draftId = getStringParam("draftId");
        } else {
            this.blog = (Blog) JacksonUtils.readAs(bundle.getString("blogPost"), Blog.class);
            this.templateConfig = (TemplateConfig) JacksonUtils.readAs(bundle.getString("templateConfig"), TemplateConfig.class);
            this.sceneInfo = (SceneInfo) JacksonUtils.readAs(bundle.getString("sceneInfo"), SceneInfo.class);
            this.draftId = bundle.getString("draftId");
        }
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig == null) {
            finish();
            return;
        }
        t.g(templateConfig);
        this.minSelectedEntryCount = templateConfig.minInputCount;
        TemplateConfig templateConfig2 = this.templateConfig;
        t.g(templateConfig2);
        this.maxSelectedEntryCount = templateConfig2.maxInputCount;
        this.entryList.add(getAddMoreEntry());
        Blog blog = this.blog;
        if (blog != null && (list = blog.mediaList) != null) {
            ArrayList<Media> arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Media) obj).type != 103) {
                    arrayList.add(obj);
                }
            }
            for (Media media : arrayList) {
                q<? super Media, ? super Boolean, ? super Boolean, l0> qVar = this.addEntry;
                t.g(media);
                qVar.invoke(media, Boolean.FALSE, Boolean.TRUE);
            }
        }
        Blog blog2 = this.blog;
        if (blog2 != null && (linkSummary = blog2.getLinkSummary()) != null && (str = linkSummary.link) != null) {
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.scene.template.f
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    SceneTemplateGeneratorFragment.onCreate$lambda$4$lambda$2(this.f2684a, dialogInterface);
                }
            });
            progressDialog.show();
            final ?? r1 = new Runnable() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1
                @Override // java.lang.Runnable
                public void run() {
                    progressDialog.dismiss();
                }
            };
            final Context context = getContext();
            WebMediaExtractor webMediaExtractor = new WebMediaExtractor(r1, progressDialog, context) { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$onCreate$3$2
                final /* synthetic */ ProgressDialog $dialog;
                final /* synthetic */ SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1 $dismissRunnable;
                private int count;

                public final int getCount() {
                    return this.count;
                }

                @Override // com.narvii.util.WebMediaExtractor
                protected void onVideoFound(@NotNull String url) {
                    t.j(url, "url");
                }

                public final void setCount(int i10) {
                    this.count = i10;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(context);
                    t.g(context);
                }

                @Override // com.narvii.util.WebMediaExtractor
                public void onFailed(int i10, @Nullable String str2) {
                    NVToast.makeText(this.this$0.getContext(), i10 + ": " + str2, 0).show();
                    Utils.handler.removeCallbacks(this.$dismissRunnable);
                    this.$dialog.dismiss();
                }

                @Override // com.narvii.util.WebMediaExtractor
                public void onFinished(@NotNull Collection<String> images, @NotNull Collection<String> videos) {
                    t.j(images, "images");
                    t.j(videos, "videos");
                    Utils.handler.removeCallbacks(this.$dismissRunnable);
                    this.$dialog.dismiss();
                }

                @Override // com.narvii.util.WebMediaExtractor
                protected void onImageFound(@NotNull String url) {
                    t.j(url, "url");
                    q<Media, Boolean, Boolean, l0> addEntry = this.this$0.getAddEntry();
                    Media media2 = new Media();
                    media2.type = 100;
                    media2.url = url;
                    addEntry.invoke(media2, Boolean.FALSE, Boolean.TRUE);
                    this.this$0.getAdapter().notifyDataSetChanged();
                    int i10 = this.count + 1;
                    this.count = i10;
                    if (i10 >= 12) {
                        Handler handler = Utils.handler;
                        handler.removeCallbacks(this.$dismissRunnable);
                        handler.postDelayed(this.$dismissRunnable, 1500L);
                    }
                }
            };
            webMediaExtractor.extract(str);
            this.webMediaExtractor = webMediaExtractor;
            Utils.handler.postDelayed(r1, 20000L);
        }
        Fragment fragmentM0 = getParentFragmentManager().m0("playListMediaPicker");
        if (fragmentM0 instanceof MediaPickerFragment) {
            mediaPickerFragment = (MediaPickerFragment) fragmentM0;
        } else {
            mediaPickerFragment = new MediaPickerFragment();
            getParentFragmentManager().q().e(mediaPickerFragment, "playListMediaPicker").k();
        }
        setMediaPicker(mediaPickerFragment);
        getMediaPicker().addOnResultListener(this);
        if (this.blog == null && this.sceneInfo != null) {
            Utils.post(new Runnable() { // from class: com.narvii.scene.template.g
                @Override // java.lang.Runnable
                public final void run() {
                    SceneTemplateGeneratorFragment.onCreate$lambda$5(this.f2685a);
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getMediaPicker().removeOnResultListener(this);
        WebMediaExtractor webMediaExtractor = this.webMediaExtractor;
        if (webMediaExtractor != null) {
            webMediaExtractor.abort();
        }
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        getProgressDialog().cancel();
        super.onStop();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        int i10;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.recycler_view);
        t.i(viewFindViewById, "findViewById(...)");
        setRecyclerView((RecyclerView) viewFindViewById);
        View viewFindViewById2 = view.findViewById(R.id.sort_layout);
        t.i(viewFindViewById2, "findViewById(...)");
        setSortLayout((SceneTemplateMaterialSortLayout) viewFindViewById2);
        getRecyclerView().setLayoutManager(new GridLayoutManager(getContext(), 3));
        getRecyclerView().addItemDecoration(new GridItemDecoration());
        setAdapter(new Adapter());
        getRecyclerView().setAdapter(getAdapter());
        SceneTemplateMaterialSortLayout sortLayout = getSortLayout();
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig != null) {
            i10 = templateConfig.maxInputCount;
        } else {
            i10 = 0;
        }
        sortLayout.setTotalCount(i10);
        getSortLayout().setOnRemoveItemListener(this);
        getSortLayout().setOnViewClickListener(this);
        WebMediaExtractor webMediaExtractor = this.webMediaExtractor;
        if (webMediaExtractor != null) {
            View viewFindViewById3 = view.findViewById(R.id.wme_frame);
            t.h(viewFindViewById3, "null cannot be cast to non-null type android.widget.FrameLayout");
            ((FrameLayout) viewFindViewById3).addView(webMediaExtractor.getAttachView(), new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public final void submit() {
        List<Media> entryMediaList = getEntryMediaList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Media media : entryMediaList) {
            if (media.isVideo()) {
                linkedHashSet.add("Video");
            } else if (Utils.isGif(media.url)) {
                linkedHashSet.add(com.bumptech.glide.h.BUCKET_GIF);
            } else {
                linkedHashSet.add("Image");
            }
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("CreateNow").extraParam("mediaCount", Integer.valueOf(entryMediaList.size())).extraParam("mediaType", TextUtils.join(",", linkedHashSet)).send();
        Iterator<SelectedEntry> it = getSortLayout().getDatas().iterator();
        while (it.hasNext()) {
            if (it.next().getState() != 4) {
                showShortToast(getString(R.string.some_images_are_loading));
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (SelectedEntry selectedEntry : getSortLayout().getDatas()) {
            Media media2 = selectedEntry.getMedia();
            t.g(media2);
            SceneTemplateExtraInfo sceneTemplateExtraInfo = new SceneTemplateExtraInfo();
            sceneTemplateExtraInfo.videoTrimStart = selectedEntry.getVideoTrimStart();
            sceneTemplateExtraInfo.videoTrimEnd = selectedEntry.getVideoTrimEnd();
            sceneTemplateExtraInfo.crop = selectedEntry.getCrop();
            l0 l0Var = l0.INSTANCE;
            arrayList.add(new w7.u<>(media2, sceneTemplateExtraInfo));
        }
        getSceneTemplateHelper().setOnCompileListener(this);
        SceneTemplateHelper sceneTemplateHelper = getSceneTemplateHelper();
        TemplateConfig templateConfig = this.templateConfig;
        t.g(templateConfig);
        sceneTemplateHelper.startCompile(arrayList, templateConfig, "storyTemplate");
    }

    private final boolean isSupportFormat(String str) {
        Locale ROOT = Locale.ROOT;
        t.i(ROOT, "ROOT");
        String lowerCase = str.toLowerCase(ROOT);
        t.i(lowerCase, "toLowerCase(...)");
        return u.P(lowerCase, ".jpg", false, 2, null) || u.P(lowerCase, ".jpeg", false, 2, null) || u.P(lowerCase, ".gif", false, 2, null) || u.P(lowerCase, ".png", false, 2, null);
    }
}
