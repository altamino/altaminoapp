package com.narvii.sharedfolder;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import java.util.ArrayList;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.id = getStringParam("id");
        this.selectMode = getStringParam("selectMode");
        if (this.selectMode == null) {
            Log.e("please specify select mode");
            getActivity().finish();
        } else {
            if (this.id == null) {
                getActivity().finish();
                return;
            }
            this.sharedAlbum = (SharedAlbum) JacksonUtils.readAs(getStringParam("album"), SharedAlbum.class);
            SharedAlbum sharedAlbum = this.sharedAlbum;
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

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) activity;
            nVActivity.setActionBarLeftTextView(R.string.cancel);
            String str = this.selectMode;
            char c = 65535;
            int iHashCode = str.hashCode();
            if (iHashCode != -1880416894) {
                if (iHashCode == 3108362 && str.equals("edit")) {
                    c = 0;
                }
            } else if (str.equals("pickUpload")) {
                c = 1;
            }
            if (c == 0) {
                nVActivity.setActionBarRightView(getRightActionStringId(), new AnonymousClass1());
            } else if (c == 1) {
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

    /* renamed from: com.narvii.sharedfolder.SharedPhotoSelectFragment$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharedPhotoSelectFragment sharedPhotoSelectFragment = SharedPhotoSelectFragment.this;
            if (sharedPhotoSelectFragment.sharedPhotosAdapter == null) {
                return;
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(sharedPhotoSelectFragment.getContext());
            ArrayList arrayList = new ArrayList();
            actionSheetDialog.addItem(R.string.add_to_another_album, false);
            arrayList.add(Integer.valueOf(R.string.add_to_another_album));
            SharedAlbum sharedAlbum = SharedPhotoSelectFragment.this.sharedAlbum;
            if (sharedAlbum != null && !sharedAlbum.isDefaultAlbum()) {
                actionSheetDialog.addItem(R.string.remove_from_album, true);
                arrayList.add(Integer.valueOf(R.string.remove_from_album));
            }
            actionSheetDialog.setOnClickListener(new DialogInterfaceOnClickListenerC01241(arrayList));
            actionSheetDialog.show();
        }

        /* renamed from: com.narvii.sharedfolder.SharedPhotoSelectFragment$1$1, reason: invalid class name and collision with other inner class name */
        class DialogInterfaceOnClickListenerC01241 implements DialogInterface.OnClickListener {
            final /* synthetic */ ArrayList val$ops;

            DialogInterfaceOnClickListenerC01241(ArrayList arrayList) {
                this.val$ops = arrayList;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SharedPhotoSelectFragment sharedPhotoSelectFragment;
                SharedAlbum sharedAlbum;
                int iIntValue = ((Integer) this.val$ops.get(i)).intValue();
                if (iIntValue == R.string.add_to_another_album) {
                    Intent intent = FragmentWrapperActivity.intent(SharedAlbumFragment.class);
                    intent.putExtra("selectMode", SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO);
                    intent.putExtra("filterAlbumId", SharedPhotoSelectFragment.this.id);
                    intent.putExtra("fileIdList", JacksonUtils.writeAsString(SharedPhotoSelectFragment.this.sharedPhotosAdapter.getSelectedIds()));
                    SharedPhotoSelectFragment.this.startActivityForResult(intent, 1);
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
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getRightActionStringId() {
        /*
            r4 = this;
            java.lang.String r0 = r4.selectMode
            int r1 = r0.hashCode()
            r2 = -1880416894(0xffffffff8feb1d82, float:-2.3184155E-29)
            r3 = 1
            if (r1 == r2) goto L1c
            r2 = 3108362(0x2f6e0a, float:4.355743E-39)
            if (r1 == r2) goto L12
            goto L26
        L12:
            java.lang.String r1 = "edit"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L26
            r0 = 0
            goto L27
        L1c:
            java.lang.String r1 = "pickUpload"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L26
            r0 = 1
            goto L27
        L26:
            r0 = -1
        L27:
            r1 = 2131692580(0x7f0f0c24, float:1.9014264E38)
            if (r0 == 0) goto L33
            if (r0 == r3) goto L2f
            return r1
        L2f:
            r0 = 2131690410(0x7f0f03aa, float:1.9009863E38)
            return r0
        L33:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.sharedfolder.SharedPhotoSelectFragment.getRightActionStringId():int");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        SharedPhotosAdapter sharedPhotosAdapter;
        if (i2 == -1 && i == 100 && intent != null) {
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
        if (i2 == -1 && i == 1) {
            finish();
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSinglePick() {
        return MODE_SINGLE_PICK.equals(this.selectMode);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        mergeAdapter.addAdapter(staticViewAdapter);
        this.sharedPhotosAdapter = new SharedPhotosAdapter(this, this.id) { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.3
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
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
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }

            @Override // com.narvii.sharedfolder.SharedPhotosAdapter
            protected void onSelectedCountChanged(int i) {
                String str;
                TextView textView = SharedPhotoSelectFragment.this.rightTextView;
                if (textView != null) {
                    StringBuilder sb = new StringBuilder();
                    SharedPhotoSelectFragment sharedPhotoSelectFragment = SharedPhotoSelectFragment.this;
                    sb.append(sharedPhotoSelectFragment.getString(sharedPhotoSelectFragment.getRightActionStringId()));
                    if (i > 0) {
                        str = "(" + i + ")";
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    textView.setText(sb.toString());
                    SharedPhotoSelectFragment.this.rightTextView.setEnabled(i > 0);
                }
            }
        };
        this.sharedPhotosAdapter.setSelectable(true, new Callback<Intent>() { // from class: com.narvii.sharedfolder.SharedPhotoSelectFragment.4
            @Override // com.narvii.util.Callback
            public void call(Intent intent) {
                intent.putExtra("single", SharedPhotoSelectFragment.this.isSinglePick());
                SharedPhotoSelectFragment.this.startActivityForResult(intent, 100);
            }
        });
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(this.sharedPhotosAdapter, 3);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }
}
