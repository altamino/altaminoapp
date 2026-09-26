package com.narvii.sharedfolder;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.SharedAlbum;
import com.narvii.model.SharedFile;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class SharedPhotoSelectFragment extends SharedBaseFragment {
    public static final String MODE_EDIT = "edit";
    public static final String MODE_PICK_UPLOAD = "pickUpload";
    public static final String MODE_SINGLE_PICK = "singlePick";
    public static final int REQUEST_ADD_TO_ALBUM = 1;
    String id;
    TextView rightTextView;
    String selectMode;
    SharedAlbum sharedAlbum;
    public SharedPhotosAdapter sharedPhotosAdapter;

    /* JADX INFO: renamed from: com.narvii.sharedfolder.SharedPhotoSelectFragment$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnClickListener {

        /* JADX INFO: renamed from: com.narvii.sharedfolder.SharedPhotoSelectFragment$1$1, reason: invalid class name and collision with other inner class name */
        class DialogInterfaceOnClickListenerC03591 implements DialogInterface.OnClickListener {
            final /* synthetic */ ArrayList val$ops;

            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            DialogInterfaceOnClickListenerC03591(ArrayList arrayList) {
                this.val$ops = arrayList;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                SharedPhotoSelectFragment sharedPhotoSelectFragment;
                SharedAlbum sharedAlbum;
                int iIntValue = ((Integer) this.val$ops.get(i10)).intValue();
                if (iIntValue == R.string.add_to_another_album) {
                    Intent intent = FragmentWrapperActivity.intent(SharedAlbumFragment.class);
                    intent.putExtra("selectMode", SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO);
                    intent.putExtra("filterAlbumId", SharedPhotoSelectFragment.this.id);
                    intent.putExtra("fileIdList", JacksonUtils.writeAsString(SharedPhotoSelectFragment.this.sharedPhotosAdapter.getSelectedIds()));
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(SharedPhotoSelectFragment.this, intent, 1);
                    return;
                }
                if (iIntValue != R.string.remove_from_album || (sharedAlbum = (sharedPhotoSelectFragment = SharedPhotoSelectFragment.this).sharedAlbum) == null || sharedPhotoSelectFragment.sharedFolderHelper.ifShowAlbumLockedDialog(sharedPhotoSelectFragment, sharedAlbum)) {
                    return;
                }
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(SharedPhotoSelectFragment.this.getContext());
                aCMAlertDialog.setMessage(R.string.remove_from_album_confirm_message);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.1.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        SharedPhotoSelectFragment sharedPhotoSelectFragment2 = SharedPhotoSelectFragment.this;
                        sharedPhotoSelectFragment2.sharedFolderHelper.removePhotosFromAlbum(sharedPhotoSelectFragment2.id, sharedPhotoSelectFragment2.sharedPhotosAdapter.getSelectedIds(), new Callback() { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.1.1.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                SharedPhotoSelectFragment.this.setResult(-1);
                                SharedPhotoSelectFragment.this.finish();
                            }
                        });
                    }
                }, SupportMenu.CATEGORY_MASK);
                aCMAlertDialog.show();
            }
        }

        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SharedPhotoSelectFragment.this.sharedPhotosAdapter == null) {
                return;
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(SharedPhotoSelectFragment.this.getContext());
            ArrayList arrayList = new ArrayList();
            actionSheetDialog.addItem(R.string.add_to_another_album, false);
            arrayList.add(Integer.valueOf(R.string.add_to_another_album));
            SharedAlbum sharedAlbum = SharedPhotoSelectFragment.this.sharedAlbum;
            if (sharedAlbum != null && !sharedAlbum.isDefaultAlbum()) {
                actionSheetDialog.addItem(R.string.remove_from_album, true);
                arrayList.add(Integer.valueOf(R.string.remove_from_album));
            }
            actionSheetDialog.setOnClickListener(new DialogInterfaceOnClickListenerC03591(arrayList));
            actionSheetDialog.show();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        SharedPhotosAdapter sharedPhotosAdapter;
        if (i11 == -1 && i10 == 100 && intent != null) {
            if (isSinglePick()) {
                Intent intent2 = new Intent();
                intent2.putExtra("photo", intent.getStringExtra("mediaItem"));
                setResult(-1, intent2);
                finish();
            } else {
                ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("selected"), String.class);
                if (listAs != null && (sharedPhotosAdapter = this.sharedPhotosAdapter) != null) {
                    sharedPhotosAdapter.setSelectedIds(listAs);
                }
            }
        }
        if (i11 == -1 && i10 == 1) {
            finish();
        }
        super.onActivityResult(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSinglePick() {
        return MODE_SINGLE_PICK.equals(this.selectMode);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        mergeAdapter.addAdapter(staticViewAdapter);
        SharedPhotosAdapter sharedPhotosAdapter = new SharedPhotosAdapter(this, this.id) { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.3
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (obj instanceof SharedFile) {
                    SharedFile sharedFile = (SharedFile) obj;
                    if (view2 != null && view2.getId() == R.id.select && SharedPhotoSelectFragment.this.isSinglePick()) {
                        if (view2 instanceof ImageView) {
                            ((ImageView) view2).setImageResource(R.drawable.ic_media_selected);
                        }
                        Intent intent = new Intent();
                        intent.putExtra("photo", JacksonUtils.writeAsString(sharedFile));
                        SharedPhotoSelectFragment.this.setResult(-1, intent);
                        SharedPhotoSelectFragment.this.finish();
                        return true;
                    }
                }
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }

            @Override // com.narvii.sharedfolder.SharedPhotosAdapter
            protected void onSelectedCountChanged(int i10) {
                String str;
                TextView textView = SharedPhotoSelectFragment.this.rightTextView;
                if (textView != null) {
                    StringBuilder sb = new StringBuilder();
                    SharedPhotoSelectFragment sharedPhotoSelectFragment = SharedPhotoSelectFragment.this;
                    sb.append(sharedPhotoSelectFragment.getString(sharedPhotoSelectFragment.getRightActionStringId()));
                    if (i10 > 0) {
                        str = "(" + i10 + ")";
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    textView.setText(sb.toString());
                    SharedPhotoSelectFragment.this.rightTextView.setEnabled(i10 > 0);
                }
            }
        };
        this.sharedPhotosAdapter = sharedPhotosAdapter;
        sharedPhotosAdapter.setSelectable(true, new Callback<Intent>() { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.4
            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            @Override // com.narvii.util.Callback
            public void call(Intent intent) {
                intent.putExtra("single", SharedPhotoSelectFragment.this.isSinglePick());
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(SharedPhotoSelectFragment.this, intent, 100);
            }
        });
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(this.sharedPhotosAdapter, 3);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }

    public int getRightActionStringId() {
        String str = this.selectMode;
        str.hashCode();
        return !str.equals("pickUpload") ? R.string.next : R.string.done;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) activity;
            nVActivity.setActionBarLeftTextView(R.string.cancel);
            String str = this.selectMode;
            str.hashCode();
            if (!str.equals("pickUpload")) {
                if (str.equals("edit")) {
                    nVActivity.setActionBarRightView(getRightActionStringId(), new AnonymousClass1());
                }
            } else {
                nVActivity.setActionBarRightView(getRightActionStringId(), new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        SharedPhotoSelectFragment sharedPhotoSelectFragment = SharedPhotoSelectFragment.this;
                        if (sharedPhotoSelectFragment.sharedPhotosAdapter == null) {
                            return;
                        }
                        sharedPhotoSelectFragment.sharedFolderHelper.addPhotosToAlbum(sharedPhotoSelectFragment.getStringParam("toAlbumId"), SharedPhotoSelectFragment.this.sharedPhotosAdapter.getSelectedIds(), new Callback() { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.2.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                SharedPhotoSelectFragment.this.finish();
                            }
                        });
                    }
                });
            }
            this.rightTextView = nVActivity.getRightTextView();
            nVActivity.setRightViewEnabled(false);
        }
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.id = getStringParam("id");
        String stringParam = getStringParam("selectMode");
        this.selectMode = stringParam;
        if (stringParam == null) {
            Log.e("please specify select mode");
            getActivity().finish();
        } else {
            if (this.id == null) {
                getActivity().finish();
                return;
            }
            SharedAlbum sharedAlbum = (SharedAlbum) JacksonUtils.readAs(getStringParam("album"), SharedAlbum.class);
            this.sharedAlbum = sharedAlbum;
            if (sharedAlbum != null) {
                setTitle(sharedAlbum.getTitle(getContext()));
            }
        }
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setClipToPadding(false);
        listView.setClipChildren(false);
    }
}
