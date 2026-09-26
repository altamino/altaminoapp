package com.narvii.media;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.Media;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PagerGalleryAdapter;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.statistics.TmpValue;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.TouchImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MediaPickerGalleryFragment extends NVFragment implements FragmentOnBackListener {
    public static final TmpValue<ArrayList<MediaSelectItem>> MEDIA_ITEM_LIST = new TmpValue<>();
    public static final int REQUEST_SELECT_MEDIA_GALLEY = 88;
    private Adapter adapter;
    CheckBox checkBoxHQ;
    CommunityConfigHelper communityConfigHelper;
    public boolean isHQChecked;
    private int maxCount;
    protected NVViewPager pager;
    public ImageView selectView;
    List<Object> selectedItemList = new ArrayList();
    protected ArrayList<MediaSelectItem> mediaItems = new ArrayList<>();
    private ViewPager.OnPageChangeListener pageListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.media.MediaPickerGalleryFragment.1
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            int childCount = MediaPickerGalleryFragment.this.pager.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = MediaPickerGalleryFragment.this.pager.getChildAt(i11);
                if (childAt != null) {
                    View viewFindViewById = childAt.findViewById(R.id.image);
                    if (viewFindViewById instanceof TouchImageView) {
                        ((TouchImageView) viewFindViewById).resetZoom();
                    }
                }
            }
            MediaPickerGalleryFragment.this.updateSelectView();
        }
    };

    private class Adapter extends PagerGalleryAdapter<MediaSelectItem> implements View.OnClickListener {
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public Adapter() {
            super(MediaPickerGalleryFragment.this.getContext(), R.layout.gallery_media);
        }

        @Override // com.narvii.util.PagerGalleryAdapter
        public View getView(View view, MediaSelectItem mediaSelectItem) {
            Media selectMedia = mediaSelectItem != null ? mediaSelectItem.getSelectMedia() : null;
            NVImageView nVImageView = (NVImageView) view.findViewById(R.id.image);
            nVImageView.setImageMedia(selectMedia);
            nVImageView.setOnClickListener(this);
            if (nVImageView instanceof TouchImageView) {
                ((TouchImageView) nVImageView).setZoomEnabled(selectMedia != null && selectMedia.isImage());
            }
            return view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaSelectItem currentMediaItem = MediaPickerGalleryFragment.this.getCurrentMediaItem();
            if (currentMediaItem == null || currentMediaItem.getSelectMedia() == null || !currentMediaItem.getSelectMedia().isVideo()) {
                return;
            }
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(MediaPickerGalleryFragment.this, NVFullScreenVideoActivity.intent(currentMediaItem.getSelectMedia()));
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "media_picker_gallery";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSelectViewStatus(boolean z6) {
        ImageView imageView = this.selectView;
        if (imageView != null) {
            imageView.setImageResource(z6 ? R.drawable.ic_media_selected : R.drawable.ic_media_not_selected);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishMultiPickWithResult() {
        Intent intent = new Intent();
        intent.putExtra("selected", JacksonUtils.writeAsString(this.selectedItemList));
        intent.putExtra("isHQChecked", this.checkBoxHQ.isChecked());
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEntrySpecOk(MediaSelectItem mediaSelectItem) {
        if (mediaSelectItem instanceof PhoneImagePickerFragment.Entry) {
            PhoneImagePickerFragment.Entry entry = (PhoneImagePickerFragment.Entry) mediaSelectItem;
            if (entry.isGif()) {
                if (Utils.uriToFile(entry.getMediaUrl()).length() > ((ConfigService) getService("config")).getInt("maxUploadImagePayloadLength", 6291456)) {
                    NVToast.makeText(getContext(), R.string.media_image_picker_file_too_large, 0).show();
                    return false;
                }
            }
            int intParam = getIntParam(entry.isGif() ? "minGifWidth" : "minWidth");
            int intParam2 = getIntParam(entry.isGif() ? "minGifHeight" : "minHeight");
            if (intParam > 0 || intParam2 > 0) {
                int i10 = entry.width;
                int i11 = entry.height;
                if (i10 == 0 || i11 == 0) {
                    try {
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(Utils.uriToFile(entry.getMediaUrl()).getAbsolutePath(), options);
                        i10 = options.outWidth;
                        i11 = options.outHeight;
                    } catch (Throwable th) {
                        OomHelper.test(th);
                    }
                }
                if ((i10 > 0 && intParam > 0 && i10 < intParam) || (i11 > 0 && intParam2 > 0 && i11 < intParam2)) {
                    NVToast.makeText(getContext(), R.string.media_image_picker_image_too_small, 0).show();
                    return false;
                }
            }
        }
        return true;
    }

    public MediaSelectItem getCurrentMediaItem() {
        int currentItem = this.pager.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.adapter.getCount()) {
            return null;
        }
        return this.adapter.getItem(currentItem);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (getBooleanParam("single")) {
            return false;
        }
        finishMultiPickWithResult();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.media_picker_gallery_layout, viewGroup, false);
    }

    protected void setUpPagerAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        adapter.setList(this.mediaItems);
        this.pager.setAdapter(this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateSelectView() {
        if (this.selectView == null) {
            return;
        }
        MediaSelectItem currentMediaItem = getCurrentMediaItem();
        if (currentMediaItem == null) {
            this.selectView.setVisibility(8);
        } else {
            this.selectView.setVisibility(0);
            this.selectView.setImageResource(this.selectedItemList.contains(currentMediaItem.getUniqueKey()) ? R.drawable.ic_media_selected : R.drawable.ic_media_not_selected);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.media_select_layout, (ViewGroup) null);
        this.selectView = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaPickerGalleryFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaSelectItem currentMediaItem = MediaPickerGalleryFragment.this.getCurrentMediaItem();
                if (currentMediaItem != null) {
                    if (MediaPickerGalleryFragment.this.getBooleanParam("single")) {
                        if (MediaPickerGalleryFragment.this.isEntrySpecOk(currentMediaItem)) {
                            MediaPickerGalleryFragment.this.changeSelectViewStatus(true);
                            Intent intent = new Intent();
                            intent.putExtra("mediaItem", JacksonUtils.writeAsString(currentMediaItem));
                            MediaPickerGalleryFragment.this.setResult(-1, intent);
                            MediaPickerGalleryFragment.this.finish();
                            return;
                        }
                        return;
                    }
                    if (MediaPickerGalleryFragment.this.selectedItemList.contains(currentMediaItem.getUniqueKey())) {
                        MediaPickerGalleryFragment.this.selectedItemList.remove(currentMediaItem.getUniqueKey());
                        MediaPickerGalleryFragment.this.changeSelectViewStatus(false);
                        return;
                    }
                    if (MediaPickerGalleryFragment.this.isEntrySpecOk(currentMediaItem)) {
                        if (MediaPickerGalleryFragment.this.maxCount <= 0 || MediaPickerGalleryFragment.this.selectedItemList.size() < MediaPickerGalleryFragment.this.maxCount) {
                            MediaPickerGalleryFragment.this.selectedItemList.add(currentMediaItem.getUniqueKey());
                            MediaPickerGalleryFragment.this.changeSelectViewStatus(true);
                            MediaPickerGalleryFragment.this.finishMultiPickWithResult();
                            return;
                        }
                        String stringParam = MediaPickerGalleryFragment.this.getStringParam("maxStr");
                        if (!TextUtils.isEmpty(stringParam)) {
                            NVToast.makeText(MediaPickerGalleryFragment.this.getContext(), stringParam, 0).show();
                            return;
                        }
                        Context context = MediaPickerGalleryFragment.this.getContext();
                        MediaPickerGalleryFragment mediaPickerGalleryFragment = MediaPickerGalleryFragment.this;
                        NVToast.makeText(context, mediaPickerGalleryFragment.getString(R.string.media_image_picker_hit_max_count, Integer.valueOf(mediaPickerGalleryFragment.maxCount)), 0).show();
                    }
                }
            }
        });
        setActionBarRightView(this.selectView);
        updateSelectView();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList<MediaSelectItem> listAs = JacksonUtils.readListAs(getStringParam("list"), (Class) getActivity().getIntent().getSerializableExtra("class"));
        if (CollectionUtils.isEmpty(listAs)) {
            listAs = MEDIA_ITEM_LIST.getAndRemove();
            if (CollectionUtils.isEmpty(listAs)) {
                getActivity().finish();
                return;
            }
        }
        this.mediaItems.addAll(listAs);
        for (MediaSelectItem mediaSelectItem : this.mediaItems) {
            if (mediaSelectItem.getSelectMedia().url.startsWith("file://")) {
                mediaSelectItem.getSelectMedia().url = "mediastore://" + ((PhoneImagePickerFragment.Entry) mediaSelectItem).imageId + "|" + mediaSelectItem.getSelectMedia().url.substring(7);
            }
        }
        setTitle((CharSequence) null);
        Class<String> cls = (Class) getActivity().getIntent().getSerializableExtra("selectClass");
        if (cls == null) {
            cls = String.class;
        }
        ArrayList listAs2 = JacksonUtils.readListAs(getStringParam("selected"), cls);
        if (listAs2 != null) {
            this.selectedItemList.addAll(listAs2);
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.maxCount = getIntParam("maxCount");
        this.isHQChecked = getBooleanParam("hqChecked");
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("position", this.pager.getCurrentItem());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        int intParam;
        int i10;
        CommunityConfigHelper communityConfigHelper;
        super.onViewCreated(view, bundle);
        this.pager = (NVViewPager) view.findViewById(R.id.pager);
        setUpPagerAdapter(bundle);
        if (bundle == null) {
            intParam = getIntParam("position");
        } else {
            intParam = bundle.getInt("position");
        }
        if (intParam >= 0) {
            this.pager.setCurrentItem(intParam);
        }
        this.pager.setOnPageChangeListener(this.pageListener);
        this.pageListener.onPageSelected(this.pager.getCurrentItem());
        final MembershipService membershipService = (MembershipService) getService("membership");
        View viewFindViewById = view.findViewById(R.id.hq_banner_root);
        if (getBooleanParam("showHQBar") && (communityConfigHelper = this.communityConfigHelper) != null && communityConfigHelper.isPremiumFeatureEnabled()) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        viewFindViewById.setVisibility(i10);
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.hq_selected);
        this.checkBoxHQ = checkBox;
        checkBox.setChecked(this.isHQChecked);
        viewFindViewById.setOnClickListener(null);
        this.checkBoxHQ.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaPickerGalleryFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MembershipService membershipService2 = membershipService;
                if (membershipService2 == null || membershipService2.isMembership()) {
                    return;
                }
                MediaPickerGalleryFragment.this.checkBoxHQ.setChecked(false);
                if (membershipService.isMembershipBefore()) {
                    MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(MediaPickerGalleryFragment.this);
                    membershipExpireDialog.source = "HD Image (Dialog)";
                    membershipExpireDialog.show();
                } else {
                    MembershipHintDialog membershipHintDialog = new MembershipHintDialog(MediaPickerGalleryFragment.this);
                    membershipHintDialog.source = "HD Image (Dialog)";
                    membershipHintDialog.show();
                }
            }
        });
    }
}
