package com.narvii.media;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Media;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PostMediaPickerFragment extends NVListFragment {
    public static final int MAX_PHOTO_COUNT = 25;
    public static final int REQUEST_SELECT_ALBUM = 1;
    public Adapter adapter;
    List<Media> allMediaList;
    Button pickButton;
    List<Media> selectedMedias = new ArrayList();

    class Adapter extends NVArrayAdapter<Media> {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public Adapter(NVContext nVContext, Class<Media> cls, List<Media> list) {
            super(nVContext, cls, list);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Media)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Media media = (Media) obj;
            if (view2 == null || view2.getId() != R.id.select) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + MediaPickerGalleryFragment.class.getName()));
                intent.putExtra("list", JacksonUtils.writeAsString(PostMediaPickerFragment.this.allMediaList));
                intent.putExtra("selected", JacksonUtils.writeAsString(PostMediaPickerFragment.this.selectedMedias));
                intent.putExtra("class", Media.class);
                intent.putExtra("selectClass", Media.class);
                intent.putExtra("maxCount", 25);
                intent.putExtra("position", PostMediaPickerFragment.this.allMediaList.indexOf(media));
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(PostMediaPickerFragment.this, intent, 88);
            } else {
                if (PostMediaPickerFragment.this.selectedMedias.contains(media)) {
                    PostMediaPickerFragment.this.selectedMedias.remove(media);
                    notifyDataSetChanged();
                } else {
                    if (PostMediaPickerFragment.this.selectedMedias.size() >= 25) {
                        NVToast.makeText(getContext(), getContext().getString(R.string.media_image_picker_hit_max_count, 25), 0).show();
                        return true;
                    }
                    PostMediaPickerFragment.this.selectedMedias.add(media);
                    notifyDataSetChanged();
                }
                PostMediaPickerFragment.this.updatePickButton();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            Media item = getItem(i10);
            View viewCreateView = createView(R.layout.item_post_media, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.photo)).setImageMedia(item);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.select);
            if (PostMediaPickerFragment.this.selectedMedias.contains(item)) {
                i11 = R.drawable.ic_media_selected;
            } else {
                i11 = R.drawable.ic_media_not_selected;
            }
            imageView.setImageResource(i11);
            imageView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i11 == -1 && i10 == 88 && intent != null) {
            this.selectedMedias = JacksonUtils.readListAs(intent.getStringExtra("selected"), Media.class);
            Adapter adapter = this.adapter;
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
            updatePickButton();
        }
        if (i10 == 1 && i11 == -1) {
            finish();
        }
        super.onActivityResult(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pick() {
        MediaPickCallbackManager mediaPickCallbackManager = (MediaPickCallbackManager) getService("mediaPickCallback");
        MediaPickCallback callback = mediaPickCallbackManager == null ? null : mediaPickCallbackManager.getCallback(MediaPickCallbackManager.SHARED_PHOTO_PICK_FROM_POST);
        if (callback == null) {
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("mediaList", JacksonUtils.writeAsString(this.selectedMedias));
        map.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, getStringParam(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID));
        map.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(getIntParam(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE)));
        callback.onPick(map, (NVActivity) getActivity(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePickButton() {
        List<Media> list = this.selectedMedias;
        int size = list == null ? 0 : list.size();
        this.pickButton.setEnabled(size > 0);
        String string = getString(R.string.pick);
        if (size > 0) {
            string = string + " (" + size + ")";
        }
        this.pickButton.setText(string);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        Adapter adapter = new Adapter(this, Media.class, this.allMediaList);
        this.adapter = adapter;
        divideColumnAdapter.setAdapter(adapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getActivity().getWindow().setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
        View viewInflate = getLayoutInflater(null).inflate(R.layout.media_image_picker_button, (ViewGroup) null);
        setActionBarRightView(viewInflate);
        setTitle(R.string.photos);
        Button button = (Button) viewInflate.findViewById(R.id.pick_image);
        this.pickButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.PostMediaPickerFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PostMediaPickerFragment.this.pick();
            }
        });
        updatePickButton();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("list"), Media.class);
        this.allMediaList = listAs;
        if (listAs == null) {
            getActivity().finish();
            return;
        }
        Media media = (Media) JacksonUtils.readAs(getStringParam("selected"), Media.class);
        if (media != null) {
            this.selectedMedias.add(media);
        } else {
            this.selectedMedias.addAll(this.allMediaList);
        }
    }
}
