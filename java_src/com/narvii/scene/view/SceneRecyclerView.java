package com.narvii.scene.view;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.mediaeditor.R;
import com.narvii.model.Scene;
import com.narvii.scene.SceneWrapper;
import com.narvii.scene.dialog.SceneAttachDataDialog;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.recycleview.layoutmanager.CustomLinearLayoutManager;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SceneRecyclerView extends HorizontalRecyclerView {
    private static final String TAG = SceneRecyclerView.class.getSimpleName();
    private static final int TYPE_ADD = 1;
    private static final int TYPE_SCENE = 0;
    private final LinearLayoutManager layoutManager;
    private View.OnClickListener onAttachPreClickListener;
    private OnDialogItemClickListener onDialogItemClickListener;
    private OnEditVideoListener onEditVideoListener;
    private OnListSizeChangedListener onListSizeChangedListener;
    private OnSelectedListener onSelectedListener;
    private SceneAdapter sceneAdapter;
    private SceneDraft sceneDraft;
    private List<Scene> sceneList;
    private List<SceneWrapper> sceneWrappers;

    public interface OnDialogItemClickListener {
        void onDeletePoll(String str);

        void onDeleteQuiz(String str);

        void onEditPoll(SceneWrapper sceneWrapper);

        void onEditQuiz(SceneWrapper sceneWrapper);
    }

    public interface OnEditVideoListener {
        void editVideo(SceneInfo sceneInfo, int i);

        void pickVideo(SceneInfo sceneInfo, int i);
    }

    public interface OnListSizeChangedListener {
        void onSizeChanged(List<SceneWrapper> list, int i);
    }

    public interface OnSelectedListener {
        void onSelected(String str, int i);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        return (i - i2) - 1;
    }

    public SceneRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.sceneWrappers = new ArrayList();
        this.layoutManager = new CustomLinearLayoutManager(getContext(), 0, false);
        setLayoutManager(this.layoutManager);
        SceneAdapter sceneAdapter = new SceneAdapter();
        this.sceneAdapter = sceneAdapter;
        setAdapter(sceneAdapter);
        setAnimation(null);
    }

    public void setOnAttachPreClickListener(View.OnClickListener onClickListener) {
        this.onAttachPreClickListener = onClickListener;
    }

    public void setSceneDraft(SceneDraft sceneDraft) {
        this.sceneDraft = sceneDraft;
        if (sceneDraft == null) {
            this.sceneWrappers = new ArrayList();
            this.sceneAdapter.notifyDataSetChanged();
        } else {
            this.sceneWrappers = SceneWrapper.createWrappers(sceneDraft);
            if (this.sceneWrappers == null) {
                this.sceneWrappers = new ArrayList();
            }
            this.sceneAdapter.notifyDataSetChanged();
        }
    }

    public void setSceneList(List<Scene> list) {
        SceneWrapper sceneWrapper;
        this.sceneList = list;
        if (list == null) {
            this.sceneWrappers = new ArrayList();
            this.sceneAdapter.notifyDataSetChanged();
            return;
        }
        List<SceneWrapper> listCreateWrappers = SceneWrapper.createWrappers(list);
        if (listCreateWrappers == null) {
            listCreateWrappers = new ArrayList<>();
        }
        if (this.sceneWrappers != null) {
            for (SceneWrapper sceneWrapper2 : listCreateWrappers) {
                if (sceneWrapper2 != null && (sceneWrapper = getSceneWrapper(sceneWrapper2.getSceneId())) != null) {
                    sceneWrapper2.setCanPlaying(sceneWrapper.isCanPlaying());
                }
            }
        }
        this.sceneWrappers = listCreateWrappers;
        this.sceneAdapter.notifyDataSetChanged();
    }

    public SceneWrapper getSceneWrapper(String str) {
        List<SceneWrapper> list = this.sceneWrappers;
        if (list == null) {
            return null;
        }
        for (SceneWrapper sceneWrapper : list) {
            if (sceneWrapper != null && TextUtils.equals(sceneWrapper.getSceneId(), str)) {
                return sceneWrapper;
            }
        }
        return null;
    }

    public void setSceneCanPlaying(boolean z, String str) {
        if (isEdit()) {
            for (SceneWrapper sceneWrapper : this.sceneWrappers) {
                if (sceneWrapper != null && TextUtils.equals(sceneWrapper.getSceneId(), str)) {
                    sceneWrapper.setCanPlaying(z);
                }
            }
            notifyDataSetChanged();
        }
    }

    public List<SceneWrapper> getSceneWrapperList() {
        return this.sceneWrappers;
    }

    public List<SceneInfo> getScenes() {
        return SceneWrapper.getSceneInfos(this.sceneWrappers);
    }

    public void setOnListSizeChangedListener(OnListSizeChangedListener onListSizeChangedListener) {
        this.onListSizeChangedListener = onListSizeChangedListener;
    }

    public void setOnSelectedListener(OnSelectedListener onSelectedListener) {
        this.onSelectedListener = onSelectedListener;
    }

    public void setOnEditVideoListener(OnEditVideoListener onEditVideoListener) {
        this.onEditVideoListener = onEditVideoListener;
    }

    public void setOnDialogItemClickListener(OnDialogItemClickListener onDialogItemClickListener) {
        this.onDialogItemClickListener = onDialogItemClickListener;
    }

    public boolean selectedScene(int i, boolean z) {
        if (this.sceneWrappers.size() == 0 || i < 0 || this.sceneWrappers.size() < i + 1 || this.sceneWrappers.get(i) == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.sceneWrappers.size(); i2++) {
            SceneWrapper sceneWrapper = this.sceneWrappers.get(i2);
            if (i2 == i) {
                sceneWrapper.selected = true;
            } else {
                sceneWrapper.selected = false;
            }
        }
        this.sceneAdapter.notifyDataSetChanged();
        if (z) {
            smoothScrollToPosition(i);
        }
        return true;
    }

    public SceneWrapper getSelectedScene() {
        if (this.sceneWrappers.size() == 0) {
            return null;
        }
        for (int i = 0; i < this.sceneWrappers.size(); i++) {
            SceneWrapper sceneWrapper = this.sceneWrappers.get(i);
            if (sceneWrapper != null && sceneWrapper.selected) {
                return sceneWrapper;
            }
        }
        return null;
    }

    public void setPlaying(boolean z) {
        this.sceneWrappers.size();
        for (int i = 0; i < this.sceneWrappers.size(); i++) {
            SceneWrapper sceneWrapper = this.sceneWrappers.get(i);
            if (sceneWrapper != null) {
                sceneWrapper.isPlaying = z && sceneWrapper.selected;
            }
        }
        this.sceneAdapter.notifyDataSetChanged();
    }

    public View getItemView(int i) {
        return this.layoutManager.findViewByPosition(i);
    }

    class SceneAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        SceneAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                SceneRecyclerView sceneRecyclerView = SceneRecyclerView.this;
                return sceneRecyclerView.new AddMoreSceneHolder(LayoutInflater.from(sceneRecyclerView.getContext()).inflate(R.layout.story_recycler_scene_add_more_item, viewGroup, false));
            }
            SceneRecyclerView sceneRecyclerView2 = SceneRecyclerView.this;
            return sceneRecyclerView2.new SceneHolder(LayoutInflater.from(sceneRecyclerView2.getContext()).inflate(R.layout.story_recycler_scene_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            Log.d("SceneRecyclerView", "onBindViewHolder  >>> position = " + i);
            if (viewHolder instanceof SceneHolder) {
                SceneWrapper sceneWrapper = (SceneWrapper) SceneRecyclerView.this.sceneWrappers.get(i);
                SceneHolder sceneHolder = (SceneHolder) viewHolder;
                sceneHolder.showSplit(i != getItemCount() - 1);
                sceneHolder.setSceneWrapper(sceneWrapper);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) sceneHolder.itemView.getLayoutParams();
                if (Build.VERSION.SDK_INT >= 17) {
                    marginLayoutParams.setMarginStart((int) Utils.dpToPx(SceneRecyclerView.this.getContext(), i == 0 ? 16.0f : 0.0f));
                    marginLayoutParams.setMarginEnd((int) Utils.dpToPx(SceneRecyclerView.this.getContext(), i != getItemCount() - 1 ? 0.0f : 16.0f));
                } else {
                    marginLayoutParams.leftMargin = (int) Utils.dpToPx(SceneRecyclerView.this.getContext(), i == 0 ? 16.0f : 0.0f);
                    marginLayoutParams.rightMargin = (int) Utils.dpToPx(SceneRecyclerView.this.getContext(), i != getItemCount() - 1 ? 0.0f : 16.0f);
                }
                sceneHolder.sceneView.requestLayout();
                if (sceneWrapper != null) {
                    int attachDataStatus = sceneWrapper.getAttachDataStatus();
                    if (attachDataStatus == 0) {
                        sceneHolder.attached.setImageResource(R.drawable.ic_scene_attach_empty);
                        return;
                    }
                    if (attachDataStatus == 1) {
                        sceneHolder.attached.setImageResource(R.drawable.ic_scene_attach);
                        return;
                    }
                    if (attachDataStatus == 2) {
                        sceneHolder.attached.setImageResource(R.drawable.ic_scene_attach_quiz);
                        return;
                    } else if (attachDataStatus == 3) {
                        sceneHolder.attached.setImageResource(R.drawable.ic_scene_attach_poll);
                        return;
                    } else {
                        if (attachDataStatus != 4) {
                            return;
                        }
                        sceneHolder.attached.setImageResource(R.drawable.ic_scene_attach_poll_uneditable);
                        return;
                    }
                }
                return;
            }
            if (viewHolder instanceof AddMoreSceneHolder) {
                AddMoreSceneHolder addMoreSceneHolder = (AddMoreSceneHolder) viewHolder;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) addMoreSceneHolder.ivAdd.getLayoutParams();
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.setMarginEnd((int) Utils.dpToPx(SceneRecyclerView.this.getContext(), i != getItemCount() - 1 ? 0.0f : 16.0f));
                } else {
                    layoutParams.rightMargin = (int) Utils.dpToPx(SceneRecyclerView.this.getContext(), i != getItemCount() - 1 ? 0.0f : 16.0f);
                }
                addMoreSceneHolder.ivAdd.requestLayout();
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = CollectionUtils.getSize(SceneRecyclerView.this.sceneWrappers);
            return (size >= 10 || SceneRecyclerView.this.isEdit()) ? size : size + 1;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (i > 10 || i != CollectionUtils.getSize(SceneRecyclerView.this.sceneWrappers) || SceneRecyclerView.this.isEdit()) ? 0 : 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEdit() {
        return this.sceneList != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToEnd() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.view.SceneRecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                int itemCount = SceneRecyclerView.this.getAdapter().getItemCount() - 1;
                if (itemCount < CollectionUtils.getSize(SceneRecyclerView.this.sceneWrappers)) {
                    itemCount = CollectionUtils.getSize(SceneRecyclerView.this.sceneWrappers);
                }
                SceneRecyclerView.this.smoothScrollToPosition(itemCount);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDataSetChanged() {
        this.sceneAdapter.notifyDataSetChanged();
    }

    private class SceneHolder extends RecyclerView.ViewHolder {
        public ImageView attached;
        public View borderLayout;
        public View borderView;
        public View editTagView;
        public NVSceneView sceneView;
        public SceneWrapper sceneWrapper;
        public View splitView;

        public SceneHolder(View view) {
            super(view);
            this.splitView = view.findViewById(R.id.split_view);
            this.sceneView = (NVSceneView) view.findViewById(R.id.scene_view);
            this.borderLayout = view.findViewById(R.id.border_layout);
            this.borderView = view.findViewById(R.id.border_view);
            this.editTagView = view.findViewById(R.id.edit_tag);
            this.attached = (ImageView) view.findViewById(R.id.attached);
            this.attached.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.view.SceneRecyclerView.SceneHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (SceneRecyclerView.this.onAttachPreClickListener != null) {
                        SceneRecyclerView.this.onAttachPreClickListener.onClick(view2);
                    }
                    if (SceneRecyclerView.this.sceneWrappers.indexOf(SceneHolder.this.sceneWrapper) >= 0) {
                        final String sceneId = SceneHolder.this.sceneWrapper.getSceneId();
                        int attachDataStatus = SceneHolder.this.sceneWrapper.getAttachDataStatus();
                        if (attachDataStatus == 0) {
                            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(SceneRecyclerView.this.getContext());
                            aCMAlertDialog.setMessage(R.string.empty_scene_add_attach_hint);
                            aCMAlertDialog.addButton(R.string.got_it, null);
                            aCMAlertDialog.show();
                            return;
                        }
                        if (attachDataStatus == 1) {
                            SceneAttachDataDialog sceneAttachDataDialog = new SceneAttachDataDialog(SceneRecyclerView.this.getContext());
                            sceneAttachDataDialog.setOnItemClickListener(new SceneAttachDataDialog.OnItemClickListener() { // from class: com.narvii.scene.view.SceneRecyclerView.SceneHolder.1.1
                                @Override // com.narvii.scene.dialog.SceneAttachDataDialog.OnItemClickListener
                                public void onNewPoll(View view3) {
                                    if (SceneRecyclerView.this.onDialogItemClickListener != null) {
                                        SceneRecyclerView.this.onDialogItemClickListener.onEditPoll(SceneHolder.this.sceneWrapper);
                                    }
                                }

                                @Override // com.narvii.scene.dialog.SceneAttachDataDialog.OnItemClickListener
                                public void onNewQuiz(View view3) {
                                    if (SceneRecyclerView.this.onDialogItemClickListener != null) {
                                        SceneRecyclerView.this.onDialogItemClickListener.onEditQuiz(SceneHolder.this.sceneWrapper);
                                    }
                                }
                            });
                            sceneAttachDataDialog.show();
                            return;
                        }
                        if (attachDataStatus == 2) {
                            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(SceneRecyclerView.this.getContext());
                            actionSheetDialog.addItem(com.narvii.lib.R.string.edit_quiz, 0);
                            actionSheetDialog.addItem(com.narvii.lib.R.string.delete, 1);
                            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.view.SceneRecyclerView.SceneHolder.1.3
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    if (i == 0) {
                                        if (SceneRecyclerView.this.onDialogItemClickListener != null) {
                                            SceneRecyclerView.this.onDialogItemClickListener.onEditQuiz(SceneHolder.this.sceneWrapper);
                                        }
                                    } else {
                                        if (i != 1 || SceneRecyclerView.this.onDialogItemClickListener == null) {
                                            return;
                                        }
                                        SceneRecyclerView.this.onDialogItemClickListener.onDeleteQuiz(sceneId);
                                    }
                                }
                            });
                            actionSheetDialog.show();
                            return;
                        }
                        if (attachDataStatus == 3) {
                            ActionSheetDialog actionSheetDialog2 = new ActionSheetDialog(SceneRecyclerView.this.getContext());
                            actionSheetDialog2.addItem(com.narvii.lib.R.string.edit_poll, 0);
                            actionSheetDialog2.addItem(com.narvii.lib.R.string.delete, 1);
                            actionSheetDialog2.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.view.SceneRecyclerView.SceneHolder.1.2
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    if (i == 0) {
                                        if (SceneRecyclerView.this.onDialogItemClickListener != null) {
                                            SceneRecyclerView.this.onDialogItemClickListener.onEditPoll(SceneHolder.this.sceneWrapper);
                                        }
                                    } else {
                                        if (i != 1 || SceneRecyclerView.this.onDialogItemClickListener == null) {
                                            return;
                                        }
                                        SceneRecyclerView.this.onDialogItemClickListener.onDeletePoll(sceneId);
                                    }
                                }
                            });
                            actionSheetDialog2.show();
                            return;
                        }
                        if (attachDataStatus != 4) {
                            return;
                        }
                        ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(SceneRecyclerView.this.getContext());
                        aCMAlertDialog2.setMessage(R.string.scene_poll_uneditable);
                        aCMAlertDialog2.addButton(R.string.got_it, null);
                        aCMAlertDialog2.show();
                    }
                }
            });
            view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.view.SceneRecyclerView.SceneHolder.2
                private long lastClickTime = 0;

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int iIndexOf = SceneRecyclerView.this.sceneWrappers.indexOf(SceneHolder.this.sceneWrapper);
                    if (iIndexOf >= 0) {
                        SceneHolder sceneHolder = SceneHolder.this;
                        if (sceneHolder.sceneWrapper.selected) {
                            if (!SceneRecyclerView.this.isEdit()) {
                                if (SceneRecyclerView.this.onEditVideoListener != null && SceneHolder.this.sceneWrapper.getStates() != 1 && System.currentTimeMillis() - this.lastClickTime >= 1000) {
                                    this.lastClickTime = System.currentTimeMillis();
                                    SceneRecyclerView.this.onEditVideoListener.editVideo(SceneHolder.this.sceneWrapper.sceneInfo, iIndexOf);
                                    Log.d(SceneRecyclerView.TAG, "edit Scene >>>  scene name = " + SceneHolder.this.sceneWrapper.sceneInfo.title + "   time = " + System.currentTimeMillis());
                                    return;
                                }
                            } else {
                                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(SceneRecyclerView.this.getContext());
                                aCMAlertDialog.setMessage(R.string.can_not_the_video);
                                aCMAlertDialog.addButton(R.string.got_it, null);
                                aCMAlertDialog.show();
                                return;
                            }
                        } else {
                            SceneRecyclerView.this.selectedScene(iIndexOf, false);
                            if (SceneRecyclerView.this.onSelectedListener != null) {
                                SceneRecyclerView.this.onSelectedListener.onSelected(SceneHolder.this.sceneWrapper.getSceneId(), iIndexOf);
                            }
                        }
                        if (SceneHolder.this.sceneWrapper.getStates() != 1 || SceneRecyclerView.this.isEdit() || System.currentTimeMillis() - this.lastClickTime < 1000) {
                            return;
                        }
                        this.lastClickTime = System.currentTimeMillis();
                        if (SceneRecyclerView.this.onEditVideoListener != null) {
                            SceneRecyclerView.this.onEditVideoListener.pickVideo(SceneHolder.this.sceneWrapper.sceneInfo, iIndexOf);
                        }
                    }
                }
            });
        }

        public void setSceneWrapper(SceneWrapper sceneWrapper) {
            this.sceneWrapper = sceneWrapper;
            this.sceneView.setData(sceneWrapper, R.drawable.ic_scene_cover_image_bg_horizontal);
            this.borderLayout.setVisibility(sceneWrapper.selected ? 0 : 8);
            this.editTagView.setVisibility((!sceneWrapper.selected || sceneWrapper.isEmpty()) ? 8 : 0);
            this.borderView.setBackgroundResource(getBorderViewBgRes(sceneWrapper));
        }

        protected int getBorderViewBgRes(SceneWrapper sceneWrapper) {
            return sceneWrapper.getStates() == 3 ? R.drawable.ic_scene_border_error_mirror : R.drawable.ic_scene_border_normal_mirror;
        }

        public void showSplit(boolean z) {
            this.splitView.setVisibility(z ? 0 : 4);
        }
    }

    private class AddMoreSceneHolder extends RecyclerView.ViewHolder {
        ImageView ivAdd;

        public AddMoreSceneHolder(View view) {
            super(view);
            this.ivAdd = (ImageView) view.findViewById(R.id.iv_add);
            view.setOnClickListener(new OnPreventRepeatedClickListener(new View.OnClickListener() { // from class: com.narvii.scene.view.SceneRecyclerView.AddMoreSceneHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (SceneRecyclerView.this.sceneDraft == null) {
                        return;
                    }
                    SceneRecyclerView.this.sceneWrappers.add(SceneWrapper.create(SceneRecyclerView.this.sceneDraft.createEmptyScene()));
                    SceneRecyclerView.this.notifyDataSetChanged();
                    SceneRecyclerView.this.scrollToEnd();
                    if (SceneRecyclerView.this.onListSizeChangedListener != null) {
                        SceneRecyclerView.this.onListSizeChangedListener.onSizeChanged(SceneRecyclerView.this.sceneWrappers, SceneRecyclerView.this.sceneWrappers.size());
                    }
                }
            }, 200));
        }
    }
}
