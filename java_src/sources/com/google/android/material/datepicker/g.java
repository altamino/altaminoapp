package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.u;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class g<S> extends DialogFragment {
    private static final String CALENDAR_CONSTRAINTS_KEY = "CALENDAR_CONSTRAINTS_KEY";
    private static final String DATE_SELECTOR_KEY = "DATE_SELECTOR_KEY";
    public static final int INPUT_MODE_CALENDAR = 0;
    private static final String INPUT_MODE_KEY = "INPUT_MODE_KEY";
    public static final int INPUT_MODE_TEXT = 1;
    private static final String NEGATIVE_BUTTON_TEXT_KEY = "NEGATIVE_BUTTON_TEXT_KEY";
    private static final String NEGATIVE_BUTTON_TEXT_RES_ID_KEY = "NEGATIVE_BUTTON_TEXT_RES_ID_KEY";
    private static final String OVERRIDE_THEME_RES_ID = "OVERRIDE_THEME_RES_ID";
    private static final String POSITIVE_BUTTON_TEXT_KEY = "POSITIVE_BUTTON_TEXT_KEY";
    private static final String POSITIVE_BUTTON_TEXT_RES_ID_KEY = "POSITIVE_BUTTON_TEXT_RES_ID_KEY";
    private static final String TITLE_TEXT_KEY = "TITLE_TEXT_KEY";
    private static final String TITLE_TEXT_RES_ID_KEY = "TITLE_TEXT_RES_ID_KEY";

    @Nullable
    private com.google.android.material.shape.g background;
    private f<S> calendar;

    @Nullable
    private CalendarConstraints calendarConstraints;
    private Button confirmButton;

    @Nullable
    private DateSelector<S> dateSelector;
    private boolean edgeToEdgeEnabled;
    private boolean fullscreen;
    private TextView headerSelectionText;
    private CheckableImageButton headerToggleButton;
    private int inputMode;
    private CharSequence negativeButtonText;

    @StringRes
    private int negativeButtonTextResId;

    @StyleRes
    private int overrideThemeResId;
    private m<S> pickerFragment;
    private CharSequence positiveButtonText;

    @StringRes
    private int positiveButtonTextResId;
    private CharSequence titleText;

    @StringRes
    private int titleTextResId;
    static final Object CONFIRM_BUTTON_TAG = "CONFIRM_BUTTON_TAG";
    static final Object CANCEL_BUTTON_TAG = "CANCEL_BUTTON_TAG";
    static final Object TOGGLE_BUTTON_TAG = "TOGGLE_BUTTON_TAG";
    private final LinkedHashSet<h<? super S>> onPositiveButtonClickListeners = new LinkedHashSet<>();
    private final LinkedHashSet<View.OnClickListener> onNegativeButtonClickListeners = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnCancelListener> onCancelListeners = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnDismissListener> onDismissListeners = new LinkedHashSet<>();

    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = g.this.onPositiveButtonClickListeners.iterator();
            while (it.hasNext()) {
                ((h) it.next()).a(g.this.s());
            }
            g.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = g.this.onNegativeButtonClickListeners.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            g.this.dismiss();
        }
    }

    class c implements OnApplyWindowInsetsListener {
        final /* synthetic */ View val$headerLayout;
        final /* synthetic */ int val$originalHeaderHeight;
        final /* synthetic */ int val$originalPaddingTop;

        c(int i10, View view, int i11) {
            this.val$originalHeaderHeight = i10;
            this.val$headerLayout = view;
            this.val$originalPaddingTop = i11;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            int i10 = windowInsetsCompat.f(WindowInsetsCompat.Type.h()).top;
            if (this.val$originalHeaderHeight >= 0) {
                this.val$headerLayout.getLayoutParams().height = this.val$originalHeaderHeight + i10;
                View view2 = this.val$headerLayout;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.val$headerLayout;
            view3.setPadding(view3.getPaddingLeft(), this.val$originalPaddingTop + i10, this.val$headerLayout.getPaddingRight(), this.val$headerLayout.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    class d extends l<S> {
        d() {
        }

        @Override // com.google.android.material.datepicker.l
        public void a(S s) {
            g.this.updateHeader();
            g.this.confirmButton.setEnabled(g.this.p().L());
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.confirmButton.setEnabled(g.this.p().L());
            g.this.headerToggleButton.toggle();
            g gVar = g.this;
            gVar.z(gVar.headerToggleButton);
            g.this.y();
        }
    }

    @NonNull
    private static Drawable n(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, AppCompatResources.b(context, d3.e.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.b(context, d3.e.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private void o(Window window) {
        if (this.edgeToEdgeEnabled) {
            return;
        }
        View viewFindViewById = requireView().findViewById(d3.f.fullscreen_header);
        com.google.android.material.internal.e.a(window, true, u.e(viewFindViewById), null);
        ViewCompat.L0(viewFindViewById, new c(viewFindViewById.getLayoutParams().height, viewFindViewById, viewFindViewById.getPaddingTop()));
        this.edgeToEdgeEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DateSelector<S> p() {
        if (this.dateSelector == null) {
            this.dateSelector = (DateSelector) getArguments().getParcelable(DATE_SELECTOR_KEY);
        }
        return this.dateSelector;
    }

    private int t(Context context) {
        int i10 = this.overrideThemeResId;
        return i10 != 0 ? i10 : p().d(context);
    }

    private void u(Context context) {
        this.headerToggleButton.setTag(TOGGLE_BUTTON_TAG);
        this.headerToggleButton.setImageDrawable(n(context));
        this.headerToggleButton.setChecked(this.inputMode != 0);
        ViewCompat.u0(this.headerToggleButton, null);
        z(this.headerToggleButton);
        this.headerToggleButton.setOnClickListener(new e());
    }

    static boolean w(@NonNull Context context) {
        return x(context, d3.b.nestedScrollable);
    }

    static boolean x(@NonNull Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.resources.b.d(context, d3.b.materialCalendarStyle, f.class.getCanonicalName()), new int[]{i10});
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(@NonNull CheckableImageButton checkableImageButton) {
        this.headerToggleButton.setContentDescription(this.headerToggleButton.isChecked() ? checkableImageButton.getContext().getString(d3.j.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(d3.j.mtrl_picker_toggle_to_text_input_mode));
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.onCancelListeners.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), t(requireContext()));
        Context context = dialog.getContext();
        this.fullscreen = v(context);
        int iD = com.google.android.material.resources.b.d(context, d3.b.colorSurface, g.class.getCanonicalName());
        com.google.android.material.shape.g gVar = new com.google.android.material.shape.g(context, null, d3.b.materialCalendarStyle, d3.k.Widget_MaterialComponents_MaterialCalendar);
        this.background = gVar;
        gVar.O(context);
        this.background.Z(ColorStateList.valueOf(iD));
        this.background.Y(ViewCompat.y(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.fullscreen ? d3.h.mtrl_picker_fullscreen : d3.h.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.fullscreen) {
            viewInflate.findViewById(d3.f.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(r(context), -2));
        } else {
            viewInflate.findViewById(d3.f.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(r(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(d3.f.mtrl_picker_header_selection_text);
        this.headerSelectionText = textView;
        ViewCompat.w0(textView, 1);
        this.headerToggleButton = (CheckableImageButton) viewInflate.findViewById(d3.f.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(d3.f.mtrl_picker_title_text);
        CharSequence charSequence = this.titleText;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.titleTextResId);
        }
        u(context);
        this.confirmButton = (Button) viewInflate.findViewById(d3.f.confirm_button);
        if (p().L()) {
            this.confirmButton.setEnabled(true);
        } else {
            this.confirmButton.setEnabled(false);
        }
        this.confirmButton.setTag(CONFIRM_BUTTON_TAG);
        CharSequence charSequence2 = this.positiveButtonText;
        if (charSequence2 != null) {
            this.confirmButton.setText(charSequence2);
        } else {
            int i10 = this.positiveButtonTextResId;
            if (i10 != 0) {
                this.confirmButton.setText(i10);
            }
        }
        this.confirmButton.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(d3.f.cancel_button);
        button.setTag(CANCEL_BUTTON_TAG);
        CharSequence charSequence3 = this.negativeButtonText;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i11 = this.negativeButtonTextResId;
            if (i11 != 0) {
                button.setText(i11);
            }
        }
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.onDismissListeners.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.pickerFragment.g();
        super.onStop();
    }

    private static int r(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(d3.d.mtrl_calendar_content_padding);
        int i10 = Month.h().daysInWeek;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(d3.d.mtrl_calendar_day_width) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(d3.d.mtrl_calendar_month_horizontal_padding));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() {
        String strQ = q();
        this.headerSelectionText.setContentDescription(String.format(getString(d3.j.mtrl_picker_announce_current_selection), strQ));
        this.headerSelectionText.setText(strQ);
    }

    static boolean v(@NonNull Context context) {
        return x(context, R.attr.windowFullscreen);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        m<S> mVarH;
        int iT = t(requireContext());
        this.calendar = f.x(p(), iT, this.calendarConstraints);
        if (this.headerToggleButton.isChecked()) {
            mVarH = i.h(p(), iT, this.calendarConstraints);
        } else {
            mVarH = this.calendar;
        }
        this.pickerFragment = mVarH;
        updateHeader();
        FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
        fragmentTransactionQ.u(d3.f.mtrl_calendar_frame, this.pickerFragment);
        fragmentTransactionQ.l();
        this.pickerFragment.f(new d());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.overrideThemeResId = bundle.getInt(OVERRIDE_THEME_RES_ID);
        this.dateSelector = (DateSelector) bundle.getParcelable(DATE_SELECTOR_KEY);
        this.calendarConstraints = (CalendarConstraints) bundle.getParcelable(CALENDAR_CONSTRAINTS_KEY);
        this.titleTextResId = bundle.getInt(TITLE_TEXT_RES_ID_KEY);
        this.titleText = bundle.getCharSequence(TITLE_TEXT_KEY);
        this.inputMode = bundle.getInt(INPUT_MODE_KEY);
        this.positiveButtonTextResId = bundle.getInt(POSITIVE_BUTTON_TEXT_RES_ID_KEY);
        this.positiveButtonText = bundle.getCharSequence(POSITIVE_BUTTON_TEXT_KEY);
        this.negativeButtonTextResId = bundle.getInt(NEGATIVE_BUTTON_TEXT_RES_ID_KEY);
        this.negativeButtonText = bundle.getCharSequence(NEGATIVE_BUTTON_TEXT_KEY);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(OVERRIDE_THEME_RES_ID, this.overrideThemeResId);
        bundle.putParcelable(DATE_SELECTOR_KEY, this.dateSelector);
        CalendarConstraints.b bVar = new CalendarConstraints.b(this.calendarConstraints);
        if (this.calendar.s() != null) {
            bVar.b(this.calendar.s().timeInMillis);
        }
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, bVar.a());
        bundle.putInt(TITLE_TEXT_RES_ID_KEY, this.titleTextResId);
        bundle.putCharSequence(TITLE_TEXT_KEY, this.titleText);
        bundle.putInt(POSITIVE_BUTTON_TEXT_RES_ID_KEY, this.positiveButtonTextResId);
        bundle.putCharSequence(POSITIVE_BUTTON_TEXT_KEY, this.positiveButtonText);
        bundle.putInt(NEGATIVE_BUTTON_TEXT_RES_ID_KEY, this.negativeButtonTextResId);
        bundle.putCharSequence(NEGATIVE_BUTTON_TEXT_KEY, this.negativeButtonText);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.fullscreen) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.background);
            o(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(d3.d.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.background, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new j3.a(requireDialog(), rect));
        }
        y();
    }

    public String q() {
        return p().b0(getContext());
    }

    @Nullable
    public final S s() {
        return p().Q();
    }
}
