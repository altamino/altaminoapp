package com.narvii.scene;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.QuizQuestion;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftManager;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.helper.SceneListHelper;
import com.narvii.scene.helper.SceneMediaPickerHelper;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.notification.CloseSceneTemplateObject;
import com.narvii.scene.notification.SceneInfoObject;
import com.narvii.scene.view.NVSceneView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.EditTextDialog;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.video.services.SceneMediaProcessor;
import com.narvii.video.services.VideoManager;
import com.narvii.widget.ACMAlertDialog;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* loaded from: classes3.dex */
public class SceneManageFragment extends DragSortListFragment implements FragmentWillFinishListener, MediaPickerFragment.OnResultListener, NotificationListener {
    private Adapter adapter;
    private DraftManager draftManager;
    private SceneInfo editSceneInfo;
    private View footerView;
    private MediaPickerFragment mediaPickerFragment;
    private PhotoManager photoManager;
    private SceneDraft sceneDraft;
    private SceneListHelper sceneListHelper;
    private SceneMediaPickerHelper sceneMediaPickerHelper;
    private ExecutorService singleThreadExecutor;
    private VideoManager videoManager;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SceneManage";
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment
    protected int getActionBarLayoutId() {
        return isDarkTheme() ? R.layout.actionbar_layout : R.layout.actionbar_layout_no_shadow;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.manage_scenes));
        StatusBarUtils.setSystemUiFlagLightStatusBar((NVContext) this, true);
        if (bundle != null) {
            this.sceneDraft = (SceneDraft) JacksonUtils.readAs(bundle.getString("sceneDraft"), SceneDraft.class);
        } else {
            this.sceneDraft = (SceneDraft) JacksonUtils.readAs(getStringParam("sceneDraft"), SceneDraft.class);
        }
        if (this.sceneDraft == null) {
            this.sceneDraft = new SceneDraft();
        }
        this.adapter = new Adapter(SceneWrapper.createWrappers(this.sceneDraft));
        this.draftManager = (DraftManager) getService(EntryManager.ENTRY_DRAFT);
        this.mediaPickerFragment = (MediaPickerFragment) getFragmentManager().findFragmentByTag("playListMediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().beginTransaction().add(this.mediaPickerFragment, "playListMediaPicker").commitAllowingStateLoss();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        this.sceneMediaPickerHelper = new SceneMediaPickerHelper(this, getDraftAbsolutePath(), this.mediaPickerFragment);
        this.videoManager = (VideoManager) getService("videoManager");
        this.photoManager = (PhotoManager) getService("photo");
        this.singleThreadExecutor = Executors.newSingleThreadExecutor();
        this.sceneListHelper = new SceneListHelper(this);
    }

    @Override // com.narvii.list.DragSortListFragment
    protected void advanceSortListView(DragSortListView dragSortListView) {
        dragSortListView.setFooterDividersEnabled(false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (isDarkTheme()) {
            return;
        }
        setBackButtonTint(ContextCompat.getColor(getContext(), R.color.story_theme_action_bar_view));
        setActionBarTitleColor(ContextCompat.getColor(getContext(), R.color.story_theme_text_color));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("sceneDraft", JacksonUtils.writeAsString(this.sceneDraft));
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.drag_manage_scene_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        this.footerView = LayoutInflater.from(getContext()).inflate(R.layout.item_add_more_scene_item, (ViewGroup) getListView(), false);
        this.footerView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SceneManageFragment.this.adapter.insert(SceneWrapper.create(SceneManageFragment.this.sceneDraft.createEmptyScene()), SceneManageFragment.this.adapter.getCount());
                SceneManageFragment.this.updateFooterView();
            }
        });
        listView.addFooterView(this.footerView, null, true);
        updateFooterView();
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return NVApplication.isStoryEditorApp();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.sceneListHelper.isSceneQuizResult(i, i2, intent)) {
            String stringExtra = intent.getStringExtra("sceneId");
            QuizQuestion quizQuestion = (QuizQuestion) JacksonUtils.readAs(intent.getStringExtra(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
            SceneInfo sceneInfo = this.sceneDraft.getSceneInfo(stringExtra);
            if (sceneInfo != null) {
                sceneInfo.question = quizQuestion;
                updateView();
                return;
            }
            return;
        }
        if (this.sceneListHelper.isScenePollResult(i, i2, intent)) {
            SceneInfo sceneInfo2 = (SceneInfo) JacksonUtils.readAs(intent.getStringExtra("sceneInfo"), SceneInfo.class);
            SceneInfo sceneInfo3 = this.sceneDraft.getSceneInfo(sceneInfo2 != null ? sceneInfo2.id : null);
            if (sceneInfo3 != null && sceneInfo2 != null) {
                sceneInfo3.pollAttach = sceneInfo2.pollAttach;
            }
            updateView();
            return;
        }
        if (this.sceneListHelper.isSceneEditorResult(i, i2, intent)) {
            SceneInfo sceneInfo4 = (SceneInfo) JacksonUtils.readAs(intent.getStringExtra("sceneInfo"), SceneInfo.class);
            SceneInfo sceneInfo5 = this.editSceneInfo;
            if (sceneInfo5 != null && sceneInfo4 != null && TextUtils.equals(sceneInfo4.id, sceneInfo5.id)) {
                this.editSceneInfo.copyScene(sceneInfo4);
            }
            updateView();
            return;
        }
        MediaPreEditingActivityKt.handlePreEditActivityResult(i, i2, intent, new Function2<Media, Bundle, Unit>() { // from class: com.narvii.scene.SceneManageFragment.2
            @Override // kotlin.jvm.functions.Function2
            public Unit invoke(Media media, Bundle bundle) {
                SceneManageFragment.this.sceneListHelper.launchSceneEditor(Collections.singletonList(media), SceneManageFragment.this.editSceneInfo, media.type == 100, SceneManageFragment.this.getDraftAbsolutePath(), bundle);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFooterView() {
        List<SceneWrapper> list = this.adapter.getList();
        if (list != null && list.size() >= 10) {
            this.footerView.setVisibility(8);
        } else {
            this.footerView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter createAdapter(Bundle bundle) {
        return this.adapter;
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        Intent intent = new Intent();
        this.sceneDraft.setSceneInfos(SceneWrapper.getSceneInfos(this.adapter.getList()));
        intent.putExtra("scene_list", JacksonUtils.writeAsString(this.sceneDraft.sceneInfos));
        intent.putExtra("draft_serial_no", this.sceneDraft.serialNo);
        nVActivity.setResult(-1, intent);
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(final List<Media> list, Bundle bundle) {
        MediaPreEditingActivityKt.handlePickerMediaResult(this, list, bundle, true, new Function0<String>() { // from class: com.narvii.scene.SceneManageFragment.3
            @Override // kotlin.jvm.functions.Function0
            public String invoke() {
                return SceneManageFragment.this.draftManager.getDir(SceneManageFragment.this.sceneDraft.draftId).getAbsolutePath() + "/" + SceneConstant.SCENE_INTERMEDIATE_FILE + "/";
            }
        }, new Function2<Media, Bundle, Unit>() { // from class: com.narvii.scene.SceneManageFragment.4
            @Override // kotlin.jvm.functions.Function2
            public Unit invoke(Media media, Bundle bundle2) {
                SceneManageFragment.this.sceneListHelper.launchSceneEditor(list, SceneManageFragment.this.editSceneInfo, media.type == 100, SceneManageFragment.this.getDraftAbsolutePath(), bundle2);
                return null;
            }
        });
    }

    protected void toSceneEditor(SceneInfo sceneInfo, boolean z) {
        this.sceneListHelper.launchSceneEditor(sceneInfo, z, getDraftAbsolutePath());
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification != null) {
            Object obj = notification.obj;
            if (obj instanceof CloseSceneTemplateObject) {
                SceneMediaPickerHelper sceneMediaPickerHelper = this.sceneMediaPickerHelper;
                if (sceneMediaPickerHelper != null) {
                    sceneMediaPickerHelper.dismissTemplate();
                    return;
                }
                return;
            }
            if (obj instanceof SceneInfoObject) {
                SceneInfo sceneInfo = ((SceneInfoObject) obj).sceneInfo;
                SceneInfo sceneInfo2 = this.editSceneInfo;
                if (sceneInfo2 != null && sceneInfo != null && TextUtils.equals(sceneInfo.id, sceneInfo2.id)) {
                    this.editSceneInfo.copyScene(sceneInfo);
                }
                updateView();
            }
        }
    }

    class Adapter extends NVArrayAdapter<SceneWrapper> {
        public Adapter(List<SceneWrapper> list) {
            super(SceneManageFragment.this, SceneWrapper.class, list);
        }

        @Override // android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (view == null) {
                view = createView(R.layout.item_sort_list_scene, viewGroup, view);
                viewHolder = new ViewHolder(view);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            if (viewHolder != null) {
                final SceneWrapper item = getItem(i);
                viewHolder.setData(item);
                viewHolder.editView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Adapter.this.showEditDialog(item, i);
                    }
                });
                viewHolder.attachView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        final SceneInfo sceneInfo = item.sceneInfo;
                        if (sceneInfo == null || !sceneInfo.containsPollOrQuiz()) {
                            return;
                        }
                        if (sceneInfo.pollAttach != null) {
                            SceneManageFragment.this.editSceneInfo = item.sceneInfo;
                            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(Adapter.this.getContext());
                            actionSheetDialog.addItem(com.narvii.lib.R.string.edit_poll, 0);
                            actionSheetDialog.addItem(com.narvii.lib.R.string.delete, 1);
                            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.2.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i2) {
                                    if (i2 == 0) {
                                        SceneManageFragment.this.onEditPoll(sceneInfo);
                                    } else if (i2 == 1) {
                                        SceneManageFragment.this.onDeletePoll(sceneInfo);
                                    }
                                }
                            });
                            actionSheetDialog.show();
                            return;
                        }
                        if (sceneInfo.question != null) {
                            ActionSheetDialog actionSheetDialog2 = new ActionSheetDialog(Adapter.this.getContext());
                            actionSheetDialog2.addItem(com.narvii.lib.R.string.edit_quiz, 0);
                            actionSheetDialog2.addItem(com.narvii.lib.R.string.delete, 1);
                            actionSheetDialog2.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.2.2
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i2) {
                                    if (i2 == 0) {
                                        SceneManageFragment.this.onEditQuiz(sceneInfo);
                                    } else if (i2 == 1) {
                                        SceneManageFragment.this.onDeleteQuiz(sceneInfo);
                                    }
                                }
                            });
                            actionSheetDialog2.show();
                        }
                    }
                });
                viewHolder.sceneView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Adapter.this.showEditDialog(item, i);
                    }
                });
            }
            return view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showEditDialog(final SceneWrapper sceneWrapper, final int i) {
            SceneManageFragment.this.editSceneInfo = sceneWrapper.sceneInfo;
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.edit, false);
            actionSheetDialog.addItem(R.string._copy, false);
            actionSheetDialog.addItem(R.string.rename, false);
            actionSheetDialog.addItem(R.string.delete, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (i2 == 0) {
                        if (SceneManageFragment.this.editSceneInfo == null) {
                            return;
                        }
                        if (sceneWrapper.getStates() == 1) {
                            SceneManageFragment.this.sceneMediaPickerHelper.showPickerDialog(SceneManageFragment.this.editSceneInfo, SceneManageFragment.this.sceneDraft.draftId);
                            return;
                        } else {
                            SceneManageFragment sceneManageFragment = SceneManageFragment.this;
                            sceneManageFragment.toSceneEditor(sceneManageFragment.editSceneInfo, false);
                            return;
                        }
                    }
                    if (i2 == 1) {
                        SceneManageFragment.this.copyScene(sceneWrapper, i);
                        return;
                    }
                    if (i2 != 2) {
                        if (i2 != 3) {
                            return;
                        }
                        Adapter.this.deleteCurrentScene(sceneWrapper);
                        return;
                    }
                    final EditTextDialog editTextDialog = new EditTextDialog(Adapter.this.getContext());
                    editTextDialog.setTitle(R.string.rename);
                    EditText editText = editTextDialog.setEditText();
                    editText.setText(sceneWrapper.getTitle());
                    editText.setSelection(editText.getText().length());
                    editTextDialog.addButton(android.R.string.cancel, 0, (View.OnClickListener) null);
                    editTextDialog.disallowEditTextEmpty((TextView) editTextDialog.addButton(R.string.post_submit, 4, new View.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.4.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            sceneWrapper.setTitle(editTextDialog.getTrimEditText());
                            Adapter.this.notifyDataSetChanged();
                        }
                    }));
                    editTextDialog.show();
                }
            });
            actionSheetDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void deleteCurrentScene(final SceneWrapper sceneWrapper) {
            if (sceneWrapper.isEmpty()) {
                SceneManageFragment.this.adapter.remove((Adapter) sceneWrapper);
                SceneManageFragment.this.updateFooterView();
                if (SceneManageFragment.this.adapter.getList().size() == 0) {
                    SceneManageFragment.this.sceneDraft.sceneInfos.clear();
                    SceneManageFragment.this.sceneDraft.serialNo = 0;
                    return;
                }
                return;
            }
            String string = this.context.getContext().getString(sceneWrapper.containsPollOrQuiz().booleanValue() ? R.string.delete_scene_comfirm : R.string.delete_scene_comfirm_simple);
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context.getContext());
            aCMAlertDialog.setMessage(string);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.scene.SceneManageFragment.Adapter.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SceneManageFragment.this.adapter.remove((Adapter) sceneWrapper);
                    SceneManageFragment.this.updateFooterView();
                    if (SceneManageFragment.this.adapter.getList().size() == 0) {
                        SceneManageFragment.this.sceneDraft.sceneInfos.clear();
                        SceneManageFragment.this.sceneDraft.serialNo = 0;
                    }
                    SceneMediaProcessor.INSTANCE.removeScene(sceneWrapper.sceneInfo, SceneManageFragment.this.videoManager);
                }
            }, SupportMenu.CATEGORY_MASK);
            aCMAlertDialog.show();
        }

        class ViewHolder {
            public ImageView attachView;
            public View editView;
            public View itemView;
            public NVSceneView sceneView;

            public ViewHolder(View view) {
                if (view == null) {
                    return;
                }
                this.itemView = view;
                this.editView = view.findViewById(R.id.edit_handle);
                this.sceneView = (NVSceneView) view.findViewById(R.id.scene_view);
                this.attachView = (ImageView) view.findViewById(R.id.attached);
                NVSceneView nVSceneView = this.sceneView;
                if (nVSceneView != null && nVSceneView.getTvTitle() != null) {
                    this.sceneView.getTvTitle().setTextColor(SceneManageFragment.this.isDarkTheme() ? -1 : -11908534);
                }
                NVSceneView nVSceneView2 = this.sceneView;
                if (nVSceneView2 != null) {
                    nVSceneView2.setDefaultTimeTextColor(SceneManageFragment.this.isDarkTheme() ? -1996488705 : -6579301);
                }
                view.setTag(this);
            }

            public void setData(SceneWrapper sceneWrapper) {
                this.sceneView.setData(sceneWrapper, R.drawable.ic_scene_cover_image_bg, ContextCompat.getColor(Adapter.this.getContext(), R.color.scene_error_color), true);
                SceneInfo sceneInfo = sceneWrapper.sceneInfo;
                if (sceneInfo != null && sceneInfo.containsPollOrQuiz()) {
                    this.attachView.setVisibility(0);
                    this.attachView.setImageResource(sceneInfo.question != null ? R.drawable.ic_scene_attach_quiz : R.drawable.ic_scene_attach_poll);
                } else {
                    this.attachView.setVisibility(8);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyScene(final SceneWrapper sceneWrapper, final int i) {
        if (this.adapter.getCount() >= 10) {
            Utils.showShortToast(getActivity(), getContext().getString(R.string.reached_maximum_number_of_scenes));
            return;
        }
        ExecutorService executorService = this.singleThreadExecutor;
        if (executorService != null) {
            executorService.execute(new Runnable() { // from class: com.narvii.scene.SceneManageFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final SceneWrapper sceneWrapperCreate = SceneWrapper.create(SceneManageFragment.this.sceneDraft.copyScene(SceneManageFragment.this.draftManager, sceneWrapper.sceneInfo));
                        Utils.post(new Runnable() { // from class: com.narvii.scene.SceneManageFragment.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SceneManageFragment.this.adapter.insert(sceneWrapperCreate, i + 1);
                                SceneManageFragment.this.updateFooterView();
                            }
                        });
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    public void onEditQuiz(SceneInfo sceneInfo) {
        this.sceneListHelper.launchEditQuiz(sceneInfo, getDraftAbsolutePath());
    }

    public void onEditPoll(SceneInfo sceneInfo) {
        this.sceneListHelper.launchEditPoll(sceneInfo, getDraftAbsolutePath());
    }

    public void onDeletePoll(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return;
        }
        SceneInfo sceneInfo2 = this.sceneDraft.getSceneInfo(sceneInfo.id);
        if (sceneInfo2 != null) {
            sceneInfo2.pollAttach = null;
        }
        this.adapter.notifyDataSetChanged();
    }

    public void onDeleteQuiz(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return;
        }
        SceneInfo sceneInfo2 = this.sceneDraft.getSceneInfo(sceneInfo.id);
        if (sceneInfo2 != null) {
            sceneInfo2.question = null;
        }
        this.adapter.notifyDataSetChanged();
    }

    protected String getDraftAbsolutePath() {
        return this.draftManager.getDir(this.sceneDraft.draftId).getAbsolutePath();
    }

    private void updateView() {
        Adapter adapter = this.adapter;
        if (adapter == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }
}
