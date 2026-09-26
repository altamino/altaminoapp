package com.narvii.scene.poll;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.SingleLineTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.app.NVFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.FragmentScenePollPostBinding;
import com.narvii.model.Media;
import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.scene.SceneBasePostFragment;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.KUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EditTextInnerScrollListener;
import com.narvii.widget.ThumbImageView;
import e8.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.w;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
public final class ScenePollPostFragment extends SceneBasePostFragment implements View.OnClickListener, View.OnFocusChangeListener, MediaPickerFragment.OnResultListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(ScenePollPostFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_OPTION_COUNT = 5;
    public static final int MAX_OPTION_INPUT_LENGTH = 30;
    public static final int MIN_OPTION_COUNT = 2;

    @Nullable
    private MediaPickerFragment mediaPickerFragment;
    private int optionIndexCount;
    private SceneInfo sceneInfo;

    @NotNull
    private final List<u<PollOption, View>> optionList = new ArrayList();

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, ScenePollPostFragment$binding$2.INSTANCE);

    @NotNull
    private final ScenePollPostFragment$textWatcher$1 textWatcher = new TextWatcher() { // from class: com.narvii.scene.poll.ScenePollPostFragment$textWatcher$1
        @Override // android.text.TextWatcher
        public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@Nullable Editable editable) {
            this.this$0.updatePollContent();
            this.this$0.invalidateOptionsMenu();
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.narvii.scene.poll.ScenePollPostFragment$isModified$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements p<PollOption, PollOption, Boolean> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        public final Boolean invoke(@NotNull PollOption opt1, @NotNull PollOption opt2) {
            t.j(opt1, "opt1");
            t.j(opt2, "opt2");
            return Boolean.valueOf(opt1.isSame(opt2));
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected int getPostObjectType() {
        return 4;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R.id.add_option;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            addOption$default(this, null, 1, null);
            return;
        }
        int i11 = R.id.option_delete_iv;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            Object tag = view.getTag(R.id.poll_option_parent);
            t.h(tag, "null cannot be cast to non-null type android.view.View");
            removeOption(findIndexForOptionView((View) tag));
            return;
        }
        int i12 = R.id.option_image_rl;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            Object tag2 = view.getTag(R.id.poll_option_parent);
            t.h(tag2, "null cannot be cast to non-null type android.view.View");
            int iFindIndexForOptionView = findIndexForOptionView((View) tag2);
            if (iFindIndexForOptionView < 0 || iFindIndexForOptionView >= this.optionList.size()) {
                return;
            }
            List<Media> list = this.optionList.get(iFindIndexForOptionView).c().mediaList;
            boolean z6 = (list == null || list.isEmpty()) ? false : true;
            Bundle bundle = new Bundle();
            bundle.putString("type", "photo");
            bundle.putInt("index", iFindIndexForOptionView);
            MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
            if (mediaPickerFragment != null) {
                mediaPickerFragment.pickMedia(this.draftDir, bundle, (z6 ? 64 : 0) | 14);
            }
        }
    }

    private final void addOption(PollOption pollOption) {
        if (this.optionList.size() >= 5) {
            return;
        }
        this.optionIndexCount++;
        View viewInflate = getLayoutInflater().inflate(R.layout.scene_poll_option_layout, (ViewGroup) getBinding().root, false);
        View viewFindViewById = viewInflate.findViewById(R.id.option_image_rl);
        int i10 = R.id.poll_option_parent;
        viewFindViewById.setTag(i10, viewInflate);
        viewFindViewById.setOnClickListener(this);
        EditText editText = (EditText) viewInflate.findViewById(R.id.option_et);
        editText.setHint(getString(R.string.poll_option_index_n, Integer.valueOf(this.optionIndexCount)));
        editText.addTextChangedListener(this.textWatcher);
        editText.setOnFocusChangeListener(this);
        editText.setSaveEnabled(false);
        View viewFindViewById2 = viewInflate.findViewById(R.id.option_delete_iv);
        viewFindViewById2.setTag(i10, viewInflate);
        viewFindViewById2.setOnClickListener(this);
        getBinding().optionsContainer.addView(viewInflate);
        if (pollOption != null) {
            PollOption pollOption2 = (PollOption) JacksonUtils.readAs(JacksonUtils.writeAsString(pollOption), PollOption.class);
            this.optionList.add(new u<>(pollOption2, viewInflate));
            editText.setText(pollOption2.title);
            List<Media> list = pollOption2.mediaList;
            t.g(viewInflate);
            updateOptionImage(list, viewInflate);
        } else {
            this.optionList.add(new u<>(new PollOption(), viewInflate));
        }
        updateAddAndDeleteIcon();
        invalidateOptionsMenu();
    }

    static /* synthetic */ void addOption$default(ScenePollPostFragment scenePollPostFragment, PollOption pollOption, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            pollOption = null;
        }
        scenePollPostFragment.addOption(pollOption);
    }

    private final int findIndexForOptionView(View view) {
        int i10 = 0;
        for (Object obj : this.optionList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.v.w();
            }
            if (t.e(((u) obj).d(), view)) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
    }

    private final FragmentScenePollPostBinding getBinding() {
        return (FragmentScenePollPostBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final void removeOption(int i10) {
        if (i10 < 0 || i10 >= this.optionList.size()) {
            return;
        }
        getBinding().optionsContainer.removeView(this.optionList.remove(i10).d());
        updateAddAndDeleteIcon();
        invalidateOptionsMenu();
    }

    private final void updateAddAndDeleteIcon() {
        int i10 = this.optionList.size() > 2 ? 0 : 4;
        Iterator<T> it = this.optionList.iterator();
        while (it.hasNext()) {
            ((View) ((u) it.next()).d()).findViewById(R.id.option_delete_iv).setVisibility(i10);
        }
        if (this.optionList.size() == 5) {
            getBinding().addOption.setVisibility(8);
        } else {
            getBinding().addOption.setVisibility(0);
        }
    }

    private final void updateOptionImage(List<? extends Media> list, View view) {
        View viewFindViewById = view.findViewById(R.id.option_placeholder_iv);
        ThumbImageView thumbImageView = (ThumbImageView) view.findViewById(R.id.option_iv);
        if (list == null || !(!list.isEmpty())) {
            viewFindViewById.setVisibility(0);
            thumbImageView.setVisibility(4);
        } else {
            viewFindViewById.setVisibility(4);
            thumbImageView.setVisibility(0);
            thumbImageView.setImageMedia(list.get(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePollContent() {
        Iterator<T> it = this.optionList.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            TextView textView = (TextView) ((View) uVar.d()).findViewById(R.id.option_et);
            String string = textView.getText().toString();
            ((PollOption) uVar.c()).title = string;
            TextView textView2 = (TextView) ((View) uVar.d()).findViewById(R.id.option_text_count_tv);
            if (textView.hasFocus()) {
                textView2.setVisibility(0);
                textView2.setText(String.valueOf(30 - string.length()));
            } else {
                textView2.setVisibility(4);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = this.optionList.iterator();
        while (it2.hasNext()) {
            String title = ((PollOption) ((u) it2.next()).c()).title;
            t.i(title, "title");
            String string2 = kotlin.text.u.b1(title).toString();
            if (!TextUtils.isEmpty(string2)) {
                Integer num = (Integer) linkedHashMap.get(string2);
                linkedHashMap.put(string2, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((Number) entry.getValue()).intValue() == 1) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator<T> it3 = this.optionList.iterator();
        while (it3.hasNext()) {
            u uVar2 = (u) it3.next();
            String title2 = ((PollOption) uVar2.c()).title;
            t.i(title2, "title");
            String string3 = kotlin.text.u.b1(title2).toString();
            if (TextUtils.isEmpty(string3) || linkedHashMap2.containsKey(string3)) {
                ((View) uVar2.d()).findViewById(R.id.option_input_rl).setBackgroundResource(R.drawable.poll_option_background);
            } else {
                ((View) uVar2.d()).findViewById(R.id.option_input_rl).setBackgroundResource(R.drawable.poll_option_invalid_background);
            }
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean canSubmit() {
        Iterator<T> it = this.optionList.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += !StringUtils.isTrimEmpty(((PollOption) ((u) it.next()).c()).title) ? 1 : 0;
        }
        return i10 >= 2;
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void doSubmit() {
        Object next;
        final Integer numValueOf;
        List<u<PollOption, View>> list = this.optionList;
        ArrayList arrayList = new ArrayList(w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((PollOption) ((u) it.next()).c());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((PollOption) obj).isEmpty()) {
                arrayList2.add(obj);
            }
        }
        SceneInfo sceneInfo = null;
        if (StringUtils.isTrimEmpty(getBinding().title.getText().toString())) {
            numValueOf = Integer.valueOf(R.string.input_poll_title);
        } else {
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                PollOption pollOption = (PollOption) next;
                if (pollOption.firstMedia() != null && StringUtils.isTrimEmpty(pollOption.title)) {
                    break;
                }
            }
            if (next != null) {
                numValueOf = Integer.valueOf(R.string.poll_incomplete_options);
            } else {
                HashSet hashSet = new HashSet();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : arrayList2) {
                    String title = ((PollOption) obj2).title;
                    t.i(title, "title");
                    if (hashSet.add(kotlin.text.u.b1(title).toString())) {
                        arrayList3.add(obj2);
                    }
                }
                numValueOf = arrayList3.size() != arrayList2.size() ? Integer.valueOf(R.string.poll_dulicate_options) : null;
            }
        }
        if (numValueOf != null) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(numValueOf.intValue());
            aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.scene.poll.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScenePollPostFragment.doSubmit$lambda$12(numValueOf, this, view);
                }
            });
            aCMAlertDialog.show();
            return;
        }
        PollAttach pollAttach = new PollAttach();
        pollAttach.title = kotlin.text.u.b1(getBinding().title.getText().toString()).toString();
        pollAttach.polloptList = arrayList2;
        SceneInfo sceneInfo2 = this.sceneInfo;
        if (sceneInfo2 == null) {
            t.B("sceneInfo");
            sceneInfo2 = null;
        }
        PollAttach pollAttach2 = sceneInfo2.pollAttach;
        pollAttach.attachId = pollAttach2 != null ? pollAttach2.attachId : null;
        SceneInfo sceneInfo3 = this.sceneInfo;
        if (sceneInfo3 == null) {
            t.B("sceneInfo");
            sceneInfo3 = null;
        }
        sceneInfo3.pollAttach = pollAttach;
        Intent intent = new Intent();
        SceneInfo sceneInfo4 = this.sceneInfo;
        if (sceneInfo4 == null) {
            t.B("sceneInfo");
        } else {
            sceneInfo = sceneInfo4;
        }
        intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean isModified() {
        SceneInfo sceneInfo = this.sceneInfo;
        SceneInfo sceneInfo2 = null;
        if (sceneInfo == null) {
            t.B("sceneInfo");
            sceneInfo = null;
        }
        if (sceneInfo.pollAttach == null) {
            return !isContentEmpty();
        }
        SceneInfo sceneInfo3 = this.sceneInfo;
        if (sceneInfo3 == null) {
            t.B("sceneInfo");
            sceneInfo3 = null;
        }
        String str = sceneInfo3.pollAttach.title;
        SceneInfo sceneInfo4 = this.sceneInfo;
        if (sceneInfo4 == null) {
            t.B("sceneInfo");
        } else {
            sceneInfo2 = sceneInfo4;
        }
        List<PollOption> list = sceneInfo2.pollAttach.polloptList;
        if (!TextUtils.equals(str, getBinding().title.getText().toString())) {
            return true;
        }
        KUtils.Companion companion = KUtils.Companion;
        List<u<PollOption, View>> list2 = this.optionList;
        ArrayList arrayList = new ArrayList(w.x(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add((PollOption) ((u) it.next()).c());
        }
        return !companion.isListSame(arrayList, list, AnonymousClass2.INSTANCE);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().root;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(@Nullable View view, boolean z6) {
        if (z6) {
            updatePollContent();
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable List<Media> list, @Nullable Bundle bundle) {
        int i10 = bundle != null ? bundle.getInt("index") : -1;
        if (i10 < 0 || i10 >= this.optionList.size()) {
            return;
        }
        u<PollOption, View> uVar = this.optionList.get(i10);
        uVar.c().mediaList = list;
        updateOptionImage(list, uVar.d());
        invalidateOptionsMenu();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        PollAttach pollAttach = new PollAttach();
        pollAttach.title = getBinding().title.getText().toString();
        List<u<PollOption, View>> list = this.optionList;
        ArrayList arrayList = new ArrayList(w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            PollOption pollOption = (PollOption) uVar.c();
            pollOption.title = ((EditText) ((View) uVar.d()).findViewById(R.id.option_et)).getText().toString();
            arrayList.add(pollOption);
        }
        pollAttach.polloptList = arrayList;
        outState.putString("savedPollAttach", JacksonUtils.writeAsString(pollAttach));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doSubmit$lambda$12(Integer num, final ScenePollPostFragment this$0, View view) {
        t.j(this$0, "this$0");
        int i10 = R.string.input_poll_title;
        if (num != null && num.intValue() == i10) {
            this$0.getBinding().title.requestFocus();
            Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.poll.d
                @Override // java.lang.Runnable
                public final void run() {
                    ScenePollPostFragment.doSubmit$lambda$12$lambda$11(this.f2673a);
                }
            }, 50L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doSubmit$lambda$12$lambda$11(ScenePollPostFragment this$0) {
        t.j(this$0, "this$0");
        SoftKeyboard.showSoftKeyboard(this$0.getBinding().title);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(ScenePollPostFragment this$0) {
        int height;
        View viewFindViewById;
        t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null && (viewFindViewById = activity.findViewById(android.R.id.content)) != null) {
            height = viewFindViewById.getHeight();
        } else {
            height = 0;
        }
        int[] iArr = {0, 0};
        this$0.getBinding().scrollView.getLocationOnScreen(iArr);
        int iMax = (int) Math.max(((height - this$0.getBinding().root.getHeight()) - iArr[1]) / 2.0f, 0.0f);
        ViewGroup.LayoutParams layoutParams = this$0.getBinding().topPlaceholder.getLayoutParams();
        if (layoutParams.height != iMax) {
            layoutParams.height = iMax;
            this$0.getBinding().topPlaceholder.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence onViewCreated$lambda$2(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        t.g(charSequence);
        int i14 = 0;
        for (int i15 = 0; i15 < charSequence.length(); i15++) {
            if (charSequence.charAt(i15) == '\n') {
                i14++;
            }
        }
        if (i14 == charSequence.length()) {
            return "";
        }
        return null;
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean isContentEmpty() {
        if (StringUtils.isTrimEmpty(getBinding().title.getText().toString())) {
            List<u<PollOption, View>> list = this.optionList;
            if ((list instanceof Collection) && list.isEmpty()) {
                return true;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((PollOption) ((u) it.next()).c()).isEmpty()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.narvii.scene.SceneBasePostFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        String string;
        super.onCreate(bundle);
        setTitle(R.string.new_poll);
        Object as = JacksonUtils.readAs(getStringParam("sceneInfo"), SceneInfo.class);
        t.i(as, "readAs(...)");
        this.sceneInfo = (SceneInfo) as;
        SceneInfo sceneInfo = null;
        if (bundle != null) {
            string = bundle.getString("savedPollAttach");
        } else {
            string = null;
        }
        if (!TextUtils.isEmpty(string)) {
            SceneInfo sceneInfo2 = this.sceneInfo;
            if (sceneInfo2 == null) {
                t.B("sceneInfo");
            } else {
                sceneInfo = sceneInfo2;
            }
            sceneInfo.pollAttach = (PollAttach) JacksonUtils.readAs(string, PollAttach.class);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void onPostDeleted() {
        super.onPostDeleted();
        SceneInfo sceneInfo = this.sceneInfo;
        SceneInfo sceneInfo2 = null;
        if (sceneInfo == null) {
            t.B("sceneInfo");
            sceneInfo = null;
        }
        sceneInfo.pollAttach = null;
        Intent intent = new Intent();
        SceneInfo sceneInfo3 = this.sceneInfo;
        if (sceneInfo3 == null) {
            t.B("sceneInfo");
        } else {
            sceneInfo2 = sceneInfo3;
        }
        intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo2));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.scene.SceneBasePostFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        MediaPickerFragment mediaPickerFragment;
        NVFragment nVFragment;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().addOption.setOnClickListener(this);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            String simpleName = MediaPickerFragment.class.getSimpleName();
            t.i(simpleName, "getSimpleName(...)");
            Fragment fragmentM0 = fragmentManager.m0(simpleName);
            if (fragmentM0 != null && (fragmentM0 instanceof MediaPickerFragment)) {
                nVFragment = (NVFragment) fragmentM0;
            } else {
                Fragment fragment = (Fragment) MediaPickerFragment.class.newInstance();
                FragmentTransaction fragmentTransactionQ = fragmentManager.q();
                t.i(fragmentTransactionQ, "beginTransaction(...)");
                fragmentTransactionQ.e(fragment, simpleName);
                fragmentTransactionQ.k();
                t.g(fragment);
                nVFragment = (NVFragment) fragment;
            }
            mediaPickerFragment = (MediaPickerFragment) nVFragment;
        } else {
            mediaPickerFragment = null;
        }
        this.mediaPickerFragment = mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.addOnResultListener(this);
        }
        getBinding().root.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.scene.poll.b
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ScenePollPostFragment.onViewCreated$lambda$0(this.f2672a);
            }
        });
        getBinding().title.setOnTouchListener(new EditTextInnerScrollListener());
        getBinding().title.addTextChangedListener(this.textWatcher);
        getBinding().title.setOnFocusChangeListener(this);
        getBinding().title.setTransformationMethod(new SingleLineTransformationMethod());
        getBinding().title.setFilters(new InputFilter[]{new InputFilter() { // from class: com.narvii.scene.poll.c
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
                return ScenePollPostFragment.onViewCreated$lambda$2(charSequence, i10, i11, spanned, i12, i13);
            }
        }, new InputFilter.LengthFilter(100)});
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            t.B("sceneInfo");
            sceneInfo = null;
        }
        PollAttach pollAttach = sceneInfo.pollAttach;
        if (pollAttach != null) {
            getBinding().title.setText(pollAttach.title);
            List<PollOption> polloptList = pollAttach.polloptList;
            t.i(polloptList, "polloptList");
            Iterator<T> it = polloptList.iterator();
            while (it.hasNext()) {
                addOption((PollOption) it.next());
            }
        }
        if (this.optionList.size() < 2) {
            for (int size = this.optionList.size(); size < 2; size++) {
                addOption$default(this, null, 1, null);
            }
        }
    }
}
