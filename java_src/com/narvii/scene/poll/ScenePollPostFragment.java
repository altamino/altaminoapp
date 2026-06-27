package com.narvii.scene.poll;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
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
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.app.NVFragment;
import com.narvii.app.theme.NVThemeOwner;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.scene.SceneBasePostFragment;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.JacksonUtils;
import com.narvii.util.KUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EditTextInnerScrollListener;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: ScenePollPostFragment.kt */
/* loaded from: classes3.dex */
public final class ScenePollPostFragment extends SceneBasePostFragment implements View.OnClickListener, View.OnFocusChangeListener, MediaPickerFragment.OnResultListener {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_OPTION_COUNT = 5;
    public static final int MAX_OPTION_INPUT_LENGTH = 30;
    public static final int MIN_OPTION_COUNT = 2;
    private HashMap _$_findViewCache;
    private MediaPickerFragment mediaPickerFragment;
    private int optionIndexCount;
    private SceneInfo sceneInfo;
    private final List<Pair<PollOption, View>> optionList = new ArrayList();
    private final ScenePollPostFragment$textWatcher$1 textWatcher = new TextWatcher() { // from class: com.narvii.scene.poll.ScenePollPostFragment$textWatcher$1
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            this.this$0.updatePollContent();
            this.this$0.invalidateOptionsMenu();
        }
    };

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected int getPostObjectType() {
        return 4;
    }

    /* compiled from: ScenePollPostFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setTitle(R.string.new_poll);
        Object as = JacksonUtils.readAs(getStringParam("sceneInfo"), SceneInfo.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…), SceneInfo::class.java)");
        this.sceneInfo = (SceneInfo) as;
        String string = bundle != null ? bundle.getString("savedPollAttach") : null;
        if (TextUtils.isEmpty(string)) {
            return;
        }
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo != null) {
            sceneInfo.pollAttach = (PollAttach) JacksonUtils.readAs(string, PollAttach.class);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_scene_poll_post, viewGroup, false);
    }

    @Override // com.narvii.scene.SceneBasePostFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        MediaPickerFragment mediaPickerFragment;
        NVThemeOwner nVThemeOwner;
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((RelativeLayout) _$_findCachedViewById(R.id.add_option)).setOnClickListener(this);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            String simpleName = MediaPickerFragment.class.getSimpleName();
            Intrinsics.checkExpressionValueIsNotNull(simpleName, "clz.simpleName");
            Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(simpleName);
            if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof MediaPickerFragment)) {
                Fragment fragment = (Fragment) MediaPickerFragment.class.newInstance();
                FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
                fragmentTransactionBeginTransaction.add(fragment, simpleName);
                fragmentTransactionBeginTransaction.commitAllowingStateLoss();
                nVThemeOwner = (NVFragment) fragment;
            } else {
                nVThemeOwner = (NVFragment) fragmentFindFragmentByTag;
            }
            mediaPickerFragment = (MediaPickerFragment) nVThemeOwner;
        } else {
            mediaPickerFragment = null;
        }
        this.mediaPickerFragment = mediaPickerFragment;
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        if (mediaPickerFragment2 != null) {
            mediaPickerFragment2.addOnResultListener(this);
        }
        LinearLayout root = (LinearLayout) _$_findCachedViewById(R.id.root);
        Intrinsics.checkExpressionValueIsNotNull(root, "root");
        root.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.scene.poll.ScenePollPostFragment.onViewCreated.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                View viewFindViewById;
                FragmentActivity activity = ScenePollPostFragment.this.getActivity();
                int height = (activity == null || (viewFindViewById = activity.findViewById(android.R.id.content)) == null) ? 0 : viewFindViewById.getHeight();
                ((NVScrollView) ScenePollPostFragment.this._$_findCachedViewById(R.id.scroll_view)).getLocationOnScreen(new int[]{0, 0});
                LinearLayout root2 = (LinearLayout) ScenePollPostFragment.this._$_findCachedViewById(R.id.root);
                Intrinsics.checkExpressionValueIsNotNull(root2, "root");
                int iMax = (int) Math.max(((height - root2.getHeight()) - r1[1]) / 2.0f, 0.0f);
                View top_placeholder = ScenePollPostFragment.this._$_findCachedViewById(R.id.top_placeholder);
                Intrinsics.checkExpressionValueIsNotNull(top_placeholder, "top_placeholder");
                ViewGroup.LayoutParams layoutParams = top_placeholder.getLayoutParams();
                if (layoutParams.height != iMax) {
                    layoutParams.height = iMax;
                    View top_placeholder2 = ScenePollPostFragment.this._$_findCachedViewById(R.id.top_placeholder);
                    Intrinsics.checkExpressionValueIsNotNull(top_placeholder2, "top_placeholder");
                    top_placeholder2.setLayoutParams(layoutParams);
                }
            }
        });
        ((EditText) _$_findCachedViewById(R.id.title)).setOnTouchListener(new EditTextInnerScrollListener());
        ((EditText) _$_findCachedViewById(R.id.title)).addTextChangedListener(this.textWatcher);
        EditText title = (EditText) _$_findCachedViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title, "title");
        title.setOnFocusChangeListener(this);
        EditText title2 = (EditText) _$_findCachedViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title2, "title");
        title2.setTransformationMethod(new SingleLineTransformationMethod());
        EditText title3 = (EditText) _$_findCachedViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title3, "title");
        title3.setFilters(new InputFilter[]{new InputFilter() { // from class: com.narvii.scene.poll.ScenePollPostFragment.onViewCreated.2
            @Override // android.text.InputFilter
            public final String filter(CharSequence source, int i, int i2, Spanned spanned, int i3, int i4) {
                Intrinsics.checkExpressionValueIsNotNull(source, "source");
                int i5 = 0;
                for (int i6 = 0; i6 < source.length(); i6++) {
                    if (source.charAt(i6) == '\n') {
                        i5++;
                    }
                }
                if (i5 == source.length()) {
                    return "";
                }
                return null;
            }
        }, new InputFilter.LengthFilter(100)});
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        PollAttach pollAttach = sceneInfo.pollAttach;
        if (pollAttach != null) {
            ((EditText) _$_findCachedViewById(R.id.title)).setText(pollAttach.title);
            List<PollOption> list = pollAttach.polloptList;
            Intrinsics.checkExpressionValueIsNotNull(list, "it.polloptList");
            Iterator<T> it = list.iterator();
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

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
        _$_clearFindViewByIdCache();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = R.id.add_option;
        if (numValueOf != null && numValueOf.intValue() == i) {
            addOption$default(this, null, 1, null);
            return;
        }
        int i2 = R.id.option_delete_iv;
        if (numValueOf != null && numValueOf.intValue() == i2) {
            Object tag = view.getTag(R.id.poll_option_parent);
            if (tag == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.View");
            }
            removeOption(findIndexForOptionView((View) tag));
            return;
        }
        int i3 = R.id.option_image_rl;
        if (numValueOf != null && numValueOf.intValue() == i3) {
            Object tag2 = view.getTag(R.id.poll_option_parent);
            if (tag2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.View");
            }
            int iFindIndexForOptionView = findIndexForOptionView((View) tag2);
            int size = this.optionList.size();
            if (iFindIndexForOptionView < 0 || size <= iFindIndexForOptionView) {
                return;
            }
            List<Media> list = this.optionList.get(iFindIndexForOptionView).getFirst().mediaList;
            boolean z = (list == null || list.isEmpty()) ? false : true;
            Bundle bundle = new Bundle();
            bundle.putString("type", "photo");
            bundle.putInt("index", iFindIndexForOptionView);
            MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
            if (mediaPickerFragment != null) {
                mediaPickerFragment.pickMedia(this.draftDir, bundle, (z ? 64 : 0) | 14);
            }
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            updatePollContent();
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        int i = bundle != null ? bundle.getInt("index") : -1;
        int size = this.optionList.size();
        if (i < 0 || size <= i) {
            return;
        }
        Pair<PollOption, View> pair = this.optionList.get(i);
        pair.getFirst().mediaList = list;
        updateOptionImage(list, pair.getSecond());
        invalidateOptionsMenu();
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean canSubmit() {
        Iterator<T> it = this.optionList.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += !StringUtils.isTrimEmpty(((PollOption) ((Pair) it.next()).getFirst()).title) ? 1 : 0;
        }
        return i >= 2;
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void doSubmit() {
        Object next;
        final Integer numValueOf;
        List<Pair<PollOption, View>> list = this.optionList;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((PollOption) ((Pair) it.next()).getFirst());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (true ^ ((PollOption) obj).isEmpty()) {
                arrayList2.add(obj);
            }
        }
        EditText title = (EditText) _$_findCachedViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title, "title");
        if (StringUtils.isTrimEmpty(title.getText().toString())) {
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
                    String str = ((PollOption) obj2).title;
                    Intrinsics.checkExpressionValueIsNotNull(str, "it.title");
                    if (str == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                    if (hashSet.add(StringsKt__StringsKt.trim(str).toString())) {
                        arrayList3.add(obj2);
                    }
                }
                numValueOf = arrayList3.size() != arrayList2.size() ? Integer.valueOf(R.string.poll_dulicate_options) : null;
            }
        }
        if (numValueOf != null) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(numValueOf.intValue());
            aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.scene.poll.ScenePollPostFragment.doSubmit.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Integer num = numValueOf;
                    int i = R.string.input_poll_title;
                    if (num != null && num.intValue() == i) {
                        ((EditText) ScenePollPostFragment.this._$_findCachedViewById(R.id.title)).requestFocus();
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.poll.ScenePollPostFragment.doSubmit.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SoftKeyboard.showSoftKeyboard((EditText) ScenePollPostFragment.this._$_findCachedViewById(R.id.title));
                            }
                        }, 50L);
                    }
                }
            });
            aCMAlertDialog.show();
            return;
        }
        PollAttach pollAttach = new PollAttach();
        EditText title2 = (EditText) _$_findCachedViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title2, "title");
        String string = title2.getText().toString();
        if (string == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
        pollAttach.title = StringsKt__StringsKt.trim(string).toString();
        pollAttach.polloptList = arrayList2;
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        PollAttach pollAttach2 = sceneInfo.pollAttach;
        pollAttach.attachId = pollAttach2 != null ? pollAttach2.attachId : null;
        SceneInfo sceneInfo2 = this.sceneInfo;
        if (sceneInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        sceneInfo2.pollAttach = pollAttach;
        Intent intent = new Intent();
        SceneInfo sceneInfo3 = this.sceneInfo;
        if (sceneInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo3));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void onPostDeleted() {
        super.onPostDeleted();
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        sceneInfo.pollAttach = null;
        Intent intent = new Intent();
        SceneInfo sceneInfo2 = this.sceneInfo;
        if (sceneInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo2));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean isModified() {
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        PollAttach pollAttach = sceneInfo.pollAttach;
        if (pollAttach == null) {
            return !isContentEmpty();
        }
        if (sceneInfo != null) {
            String str = pollAttach.title;
            if (sceneInfo != null) {
                List<PollOption> list = pollAttach.polloptList;
                EditText title = (EditText) _$_findCachedViewById(R.id.title);
                Intrinsics.checkExpressionValueIsNotNull(title, "title");
                if (!TextUtils.equals(str, title.getText().toString())) {
                    return true;
                }
                KUtils.Companion companion = KUtils.Companion;
                List<Pair<PollOption, View>> list2 = this.optionList;
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add((PollOption) ((Pair) it.next()).getFirst());
                }
                return !companion.isListSame(arrayList, list, new Function2<PollOption, PollOption, Boolean>() { // from class: com.narvii.scene.poll.ScenePollPostFragment.isModified.2
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Boolean invoke(PollOption pollOption, PollOption pollOption2) {
                        return Boolean.valueOf(invoke2(pollOption, pollOption2));
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final boolean invoke2(PollOption opt1, PollOption opt2) {
                        Intrinsics.checkParameterIsNotNull(opt1, "opt1");
                        Intrinsics.checkParameterIsNotNull(opt2, "opt2");
                        return opt1.isSame(opt2);
                    }
                });
            }
            Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sceneInfo");
        throw null;
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean isContentEmpty() {
        boolean z;
        EditText title = (EditText) _$_findCachedViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title, "title");
        if (!StringUtils.isTrimEmpty(title.getText().toString())) {
            return false;
        }
        List<Pair<PollOption, View>> list = this.optionList;
        if ((list instanceof Collection) && list.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((PollOption) ((Pair) it.next()).getFirst()).isEmpty()) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        return z;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        PollAttach pollAttach = new PollAttach();
        EditText title = (EditText) _$_findCachedViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(title, "title");
        pollAttach.title = title.getText().toString();
        List<Pair<PollOption, View>> list = this.optionList;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            PollOption pollOption = (PollOption) pair.getFirst();
            View viewFindViewById = ((View) pair.getSecond()).findViewById(R.id.option_et);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "pair.second.findViewById<EditText>(R.id.option_et)");
            pollOption.title = ((EditText) viewFindViewById).getText().toString();
            arrayList.add(pollOption);
        }
        pollAttach.polloptList = arrayList;
        outState.putString("savedPollAttach", JacksonUtils.writeAsString(pollAttach));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePollContent() {
        Iterator<T> it = this.optionList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            TextView et = (TextView) ((View) pair.getSecond()).findViewById(R.id.option_et);
            Intrinsics.checkExpressionValueIsNotNull(et, "et");
            String string = et.getText().toString();
            ((PollOption) pair.getFirst()).title = string;
            TextView countHint = (TextView) ((View) pair.getSecond()).findViewById(R.id.option_text_count_tv);
            if (et.hasFocus()) {
                Intrinsics.checkExpressionValueIsNotNull(countHint, "countHint");
                countHint.setVisibility(0);
                countHint.setText(String.valueOf(30 - string.length()));
            } else {
                Intrinsics.checkExpressionValueIsNotNull(countHint, "countHint");
                countHint.setVisibility(4);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = this.optionList.iterator();
        while (it2.hasNext()) {
            String str = ((PollOption) ((Pair) it2.next()).getFirst()).title;
            Intrinsics.checkExpressionValueIsNotNull(str, "it.first.title");
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            String string2 = StringsKt__StringsKt.trim(str).toString();
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
            Pair pair2 = (Pair) it3.next();
            String str2 = ((PollOption) pair2.getFirst()).title;
            Intrinsics.checkExpressionValueIsNotNull(str2, "it.first.title");
            if (str2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            String string3 = StringsKt__StringsKt.trim(str2).toString();
            if (TextUtils.isEmpty(string3) || linkedHashMap2.containsKey(string3)) {
                ((View) pair2.getSecond()).findViewById(R.id.option_input_rl).setBackgroundResource(R.drawable.poll_option_background);
            } else {
                ((View) pair2.getSecond()).findViewById(R.id.option_input_rl).setBackgroundResource(R.drawable.poll_option_invalid_background);
            }
        }
    }

    static /* synthetic */ void addOption$default(ScenePollPostFragment scenePollPostFragment, PollOption pollOption, int i, Object obj) {
        if ((i & 1) != 0) {
            pollOption = null;
        }
        scenePollPostFragment.addOption(pollOption);
    }

    private final void addOption(PollOption pollOption) {
        if (this.optionList.size() >= 5) {
            return;
        }
        this.optionIndexCount++;
        View optionView = getLayoutInflater().inflate(R.layout.scene_poll_option_layout, (ViewGroup) _$_findCachedViewById(R.id.root), false);
        View viewFindViewById = optionView.findViewById(R.id.option_image_rl);
        viewFindViewById.setTag(R.id.poll_option_parent, optionView);
        viewFindViewById.setOnClickListener(this);
        EditText et = (EditText) optionView.findViewById(R.id.option_et);
        Intrinsics.checkExpressionValueIsNotNull(et, "et");
        et.setHint(getString(R.string.poll_option_index_n, Integer.valueOf(this.optionIndexCount)));
        et.addTextChangedListener(this.textWatcher);
        et.setOnFocusChangeListener(this);
        et.setSaveEnabled(false);
        View viewFindViewById2 = optionView.findViewById(R.id.option_delete_iv);
        viewFindViewById2.setTag(R.id.poll_option_parent, optionView);
        viewFindViewById2.setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(R.id.options_container)).addView(optionView);
        if (pollOption != null) {
            PollOption pollOption2 = (PollOption) JacksonUtils.readAs(JacksonUtils.writeAsString(pollOption), PollOption.class);
            this.optionList.add(new Pair<>(pollOption2, optionView));
            et.setText(pollOption2.title);
            List<Media> list = pollOption2.mediaList;
            Intrinsics.checkExpressionValueIsNotNull(optionView, "optionView");
            updateOptionImage(list, optionView);
        } else {
            this.optionList.add(new Pair<>(new PollOption(), optionView));
        }
        updateAddAndDeleteIcon();
        invalidateOptionsMenu();
    }

    private final void removeOption(int i) {
        int size = this.optionList.size();
        if (i < 0 || size <= i) {
            return;
        }
        ((LinearLayout) _$_findCachedViewById(R.id.options_container)).removeView(this.optionList.remove(i).getSecond());
        updateAddAndDeleteIcon();
        invalidateOptionsMenu();
    }

    private final int findIndexForOptionView(View view) {
        int i = 0;
        for (Object obj : this.optionList) {
            int i2 = i + 1;
            if (i >= 0) {
                if (Intrinsics.areEqual((View) ((Pair) obj).getSecond(), view)) {
                    return i;
                }
                i = i2;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        return -1;
    }

    private final void updateOptionImage(List<? extends Media> list, View view) {
        View placeholder = view.findViewById(R.id.option_placeholder_iv);
        ThumbImageView iv = (ThumbImageView) view.findViewById(R.id.option_iv);
        if (list != null && (!list.isEmpty())) {
            Intrinsics.checkExpressionValueIsNotNull(placeholder, "placeholder");
            placeholder.setVisibility(4);
            Intrinsics.checkExpressionValueIsNotNull(iv, "iv");
            iv.setVisibility(0);
            iv.setImageMedia(list.get(0));
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(placeholder, "placeholder");
        placeholder.setVisibility(0);
        Intrinsics.checkExpressionValueIsNotNull(iv, "iv");
        iv.setVisibility(4);
    }

    private final void updateAddAndDeleteIcon() {
        int i = this.optionList.size() > 2 ? 0 : 4;
        Iterator<T> it = this.optionList.iterator();
        while (it.hasNext()) {
            View viewFindViewById = ((View) ((Pair) it.next()).getSecond()).findViewById(R.id.option_delete_iv);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "it.second.findViewById<V…w>(R.id.option_delete_iv)");
            viewFindViewById.setVisibility(i);
        }
        if (this.optionList.size() == 5) {
            RelativeLayout add_option = (RelativeLayout) _$_findCachedViewById(R.id.add_option);
            Intrinsics.checkExpressionValueIsNotNull(add_option, "add_option");
            add_option.setVisibility(8);
        } else {
            RelativeLayout add_option2 = (RelativeLayout) _$_findCachedViewById(R.id.add_option);
            Intrinsics.checkExpressionValueIsNotNull(add_option2, "add_option");
            add_option2.setVisibility(0);
        }
    }
}
