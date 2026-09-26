package com.narvii.item.property;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.util.Callback;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.FontAwesomeRatingBar;
import java.util.Calendar;

/* JADX INFO: loaded from: classes6.dex */
public class ItemPropertyEditPanel extends LinearLayout implements View.OnClickListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnGlobalFocusChangeListener, Runnable {
    static final int DELAY = 120;
    private DatePicker.OnDateChangedListener dateListener;
    View frame;
    boolean keyboardShown;
    int prevViewHeight;
    private Callback<Integer> ratingCallback;
    View root;

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View view, View view2) {
        int id = view == null ? 0 : view.getId();
        if (id == R.id.item_property_rating && (view2 instanceof EditText)) {
            this.frame.setVisibility(8);
        } else if (id == R.id.item_property_date && (view2 instanceof EditText)) {
            this.frame.setVisibility(8);
        }
        int id2 = view2 != null ? view2.getId() : 0;
        if (id2 == R.id.item_property_rating || id2 == R.id.item_property_date) {
            hideKeyboard();
        }
        Handler handler = Utils.handler;
        handler.removeCallbacks(this);
        handler.postDelayed(this, 120L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ItemPropertyEditor getFocusedEditor() {
        View focusedChild = this.root;
        for (int i10 = 0; i10 < 6; i10++) {
            if (focusedChild instanceof ItemPropertyEditor) {
                return (ItemPropertyEditor) focusedChild;
            }
            if (focusedChild instanceof ViewGroup) {
                focusedChild = ((ViewGroup) focusedChild).getFocusedChild();
            }
        }
        return null;
    }

    private void showKeyboard(EditText editText) {
        this.frame.setVisibility(8);
        SoftKeyboard.showSoftKeyboard(editText);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.prevViewHeight != this.root.getHeight()) {
            this.prevViewHeight = this.root.getHeight();
            Rect rect = new Rect();
            this.root.getWindowVisibleDisplayFrame(rect);
            int height = this.root.getRootView().getHeight() - rect.bottom;
            Display defaultDisplay = ((Activity) getContext()).getWindowManager().getDefaultDisplay();
            if (height > defaultDisplay.getHeight() / 4) {
                this.frame.getLayoutParams().height = defaultDisplay.getHeight() - rect.bottom;
                this.keyboardShown = true;
                this.frame.setVisibility(8);
            } else {
                this.keyboardShown = false;
            }
            Utils.handler.removeCallbacks(this);
            Utils.postDelayed(this, 120L);
        }
    }

    public void setup(View view) {
        this.root = view;
        view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        view.getViewTreeObserver().addOnGlobalFocusChangeListener(this);
    }

    public ItemPropertyEditPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ratingCallback = new Callback<Integer>() { // from class: com.narvii.item.property.ItemPropertyEditPanel.1
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                ItemPropertyEditor focusedEditor = ItemPropertyEditPanel.this.getFocusedEditor();
                if (focusedEditor != null) {
                    focusedEditor.setRating(num.intValue());
                }
            }
        };
        this.dateListener = new DatePicker.OnDateChangedListener() { // from class: com.narvii.item.property.ItemPropertyEditPanel.2
            @Override // android.widget.DatePicker.OnDateChangedListener
            public void onDateChanged(DatePicker datePicker, int i10, int i11, int i12) {
                ItemPropertyEditor focusedEditor = ItemPropertyEditPanel.this.getFocusedEditor();
                if (focusedEditor != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTimeInMillis(0L);
                    calendar.set(1, i10);
                    calendar.set(2, i11);
                    calendar.set(5, i12);
                    focusedEditor.setDate(calendar.getTime());
                }
            }
        };
    }

    private void hideKeyboard() {
        SoftKeyboard.hideSoftKeyboard(getContext());
    }

    public boolean onBackPressed() {
        if (getVisibility() == 0 && this.frame.getVisibility() == 0) {
            setVisibility(8);
            return true;
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ItemPropertyEditor focusedEditor = getFocusedEditor();
        if (focusedEditor == null) {
            return;
        }
        if (view.getId() == R.id.post_item_property_switch_keyboard) {
            focusedEditor.setType("text");
            focusedEditor.edit.requestFocus();
            showKeyboard(focusedEditor.edit);
        }
        if (view.getId() == R.id.post_item_property_switch_calendar) {
            focusedEditor.setType("date");
            focusedEditor.date.requestFocus();
        }
        if (view.getId() == R.id.post_item_property_switch_rating_star) {
            focusedEditor.setType("levelStar");
            focusedEditor.rating.requestFocus();
        }
        if (view.getId() == R.id.post_item_property_switch_rating_heart) {
            focusedEditor.setType("levelHeart");
            focusedEditor.rating.requestFocus();
        }
        if (view.getId() == R.id.post_item_property_switch_rating_cost) {
            focusedEditor.setType("levelCost");
            focusedEditor.rating.requestFocus();
        }
        Utils.handler.removeCallbacks(this);
        Utils.postDelayed(this, 120L);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(R.id.post_item_property_switch_rating_cost).setOnClickListener(this);
        findViewById(R.id.post_item_property_switch_rating_heart).setOnClickListener(this);
        findViewById(R.id.post_item_property_switch_rating_star).setOnClickListener(this);
        findViewById(R.id.post_item_property_switch_calendar).setOnClickListener(this);
        findViewById(R.id.post_item_property_switch_keyboard).setOnClickListener(this);
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_star)).touchCallback = this.ratingCallback;
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_heart)).touchCallback = this.ratingCallback;
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_cost)).touchCallback = this.ratingCallback;
        this.frame = findViewById(R.id.post_item_property_panel_frame);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        View focusedChild;
        int id;
        char c7;
        int i10;
        int i11;
        int i12;
        int i13;
        int rating;
        int i14;
        int rating2;
        int i15;
        int rating3;
        int i16;
        int i17;
        ItemPropertyEditor focusedEditor = getFocusedEditor();
        if (focusedEditor == null) {
            focusedChild = null;
        } else {
            focusedChild = focusedEditor.getFocusedChild();
        }
        int i18 = 0;
        if (focusedChild == null) {
            id = 0;
        } else {
            id = focusedChild.getId();
        }
        if (id == R.id.item_property_text) {
            this.frame.setVisibility(8);
            if (this.keyboardShown) {
                i17 = 0;
            } else {
                i17 = 8;
            }
            setVisibility(i17);
        } else if (id == R.id.item_property_date || id == R.id.item_property_rating) {
            this.frame.setVisibility(0);
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        if (focusedEditor == null) {
            c7 = 0;
        } else if ("levelCost".equals(focusedEditor.getType())) {
            c7 = 1;
        } else if ("levelHeart".equals(focusedEditor.getType())) {
            c7 = 2;
        } else if ("levelStar".equals(focusedEditor.getType())) {
            c7 = 3;
        } else if ("date".equals(focusedEditor.getType())) {
            c7 = 4;
        } else {
            c7 = 5;
        }
        TextView textView = (TextView) findViewById(R.id.post_item_property_switch_rating_cost);
        Resources resources = getResources();
        int i19 = R.color.item_property_panel_switch_light;
        if (c7 == 1) {
            i10 = R.color.item_property_panel_switch_dark;
        } else {
            i10 = R.color.item_property_panel_switch_light;
        }
        textView.setTextColor(resources.getColorStateList(i10));
        TextView textView2 = (TextView) findViewById(R.id.post_item_property_switch_rating_heart);
        Resources resources2 = getResources();
        if (c7 == 2) {
            i11 = R.color.item_property_panel_switch_dark;
        } else {
            i11 = R.color.item_property_panel_switch_light;
        }
        textView2.setTextColor(resources2.getColorStateList(i11));
        TextView textView3 = (TextView) findViewById(R.id.post_item_property_switch_rating_star);
        Resources resources3 = getResources();
        if (c7 == 3) {
            i12 = R.color.item_property_panel_switch_dark;
        } else {
            i12 = R.color.item_property_panel_switch_light;
        }
        textView3.setTextColor(resources3.getColorStateList(i12));
        TextView textView4 = (TextView) findViewById(R.id.post_item_property_switch_calendar);
        Resources resources4 = getResources();
        if (c7 == 4) {
            i13 = R.color.item_property_panel_switch_dark;
        } else {
            i13 = R.color.item_property_panel_switch_light;
        }
        textView4.setTextColor(resources4.getColorStateList(i13));
        TextView textView5 = (TextView) findViewById(R.id.post_item_property_switch_keyboard);
        Resources resources5 = getResources();
        if (c7 == 5) {
            i19 = R.color.item_property_panel_switch_dark;
        }
        textView5.setTextColor(resources5.getColorStateList(i19));
        FontAwesomeRatingBar fontAwesomeRatingBar = (FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_star);
        if (focusedEditor == null) {
            rating = 0;
        } else {
            rating = focusedEditor.getRating();
        }
        fontAwesomeRatingBar.setRating(rating);
        FontAwesomeRatingBar fontAwesomeRatingBar2 = (FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_star);
        if (c7 == 3) {
            i14 = 0;
        } else {
            i14 = 8;
        }
        fontAwesomeRatingBar2.setVisibility(i14);
        FontAwesomeRatingBar fontAwesomeRatingBar3 = (FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_heart);
        if (focusedEditor == null) {
            rating2 = 0;
        } else {
            rating2 = focusedEditor.getRating();
        }
        fontAwesomeRatingBar3.setRating(rating2);
        FontAwesomeRatingBar fontAwesomeRatingBar4 = (FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_heart);
        if (c7 == 2) {
            i15 = 0;
        } else {
            i15 = 8;
        }
        fontAwesomeRatingBar4.setVisibility(i15);
        FontAwesomeRatingBar fontAwesomeRatingBar5 = (FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_cost);
        if (focusedEditor == null) {
            rating3 = 0;
        } else {
            rating3 = focusedEditor.getRating();
        }
        fontAwesomeRatingBar5.setRating(rating3);
        FontAwesomeRatingBar fontAwesomeRatingBar6 = (FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_cost);
        if (c7 == 1) {
            i16 = 0;
        } else {
            i16 = 8;
        }
        fontAwesomeRatingBar6.setVisibility(i16);
        Calendar calendar = Calendar.getInstance();
        if (focusedEditor != null && focusedEditor.getDate() != null) {
            calendar.setTime(focusedEditor.getDate());
        }
        ((DatePicker) findViewById(R.id.post_item_property_panel_date)).init(calendar.get(1), calendar.get(2), calendar.get(5), this.dateListener);
        DatePicker datePicker = (DatePicker) findViewById(R.id.post_item_property_panel_date);
        if (c7 != 4) {
            i18 = 8;
        }
        datePicker.setVisibility(i18);
    }
}
