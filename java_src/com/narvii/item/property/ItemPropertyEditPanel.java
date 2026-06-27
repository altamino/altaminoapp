package com.narvii.item.property;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
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
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.amino.mastes.R;
import com.narvii.util.Callback;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.FontAwesomeRatingBar;
import java.util.Calendar;

/* loaded from: classes.dex */
public class ItemPropertyEditPanel extends LinearLayout implements View.OnClickListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnGlobalFocusChangeListener, Runnable {
    static final int DELAY = 120;
    private DatePicker.OnDateChangedListener dateListener;
    View frame;
    boolean keyboardShown;
    int prevViewHeight;
    private Callback<Integer> ratingCallback;
    View root;

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
            public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
                ItemPropertyEditor focusedEditor = ItemPropertyEditPanel.this.getFocusedEditor();
                if (focusedEditor != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTimeInMillis(0L);
                    calendar.set(1, i);
                    calendar.set(2, i2);
                    calendar.set(5, i3);
                    focusedEditor.setDate(calendar.getTime());
                }
            }
        };
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

    public boolean onBackPressed() {
        if (getVisibility() != 0 || this.frame.getVisibility() != 0) {
            return false;
        }
        setVisibility(8);
        return true;
    }

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
        Utils.handler.removeCallbacks(this);
        Utils.handler.postDelayed(this, 120L);
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ItemPropertyEditor focusedEditor = getFocusedEditor();
        if (focusedEditor == null) {
            return;
        }
        if (view.getId() == R.id.post_item_property_switch_keyboard) {
            focusedEditor.setType(MimeTypes.BASE_TYPE_TEXT);
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

    private void hideKeyboard() {
        SoftKeyboard.hideSoftKeyboard(getContext());
    }

    private void showKeyboard(EditText editText) {
        this.frame.setVisibility(8);
        SoftKeyboard.showSoftKeyboard(editText);
    }

    @Override // java.lang.Runnable
    public void run() {
        char c;
        ItemPropertyEditor focusedEditor = getFocusedEditor();
        View focusedChild = focusedEditor == null ? null : focusedEditor.getFocusedChild();
        int id = focusedChild == null ? 0 : focusedChild.getId();
        if (id == R.id.item_property_text) {
            this.frame.setVisibility(8);
            setVisibility(this.keyboardShown ? 0 : 8);
        } else if (id == R.id.item_property_date || id == R.id.item_property_rating) {
            this.frame.setVisibility(0);
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        if (focusedEditor == null) {
            c = 0;
        } else if ("levelCost".equals(focusedEditor.getType())) {
            c = 1;
        } else if ("levelHeart".equals(focusedEditor.getType())) {
            c = 2;
        } else if ("levelStar".equals(focusedEditor.getType())) {
            c = 3;
        } else {
            c = "date".equals(focusedEditor.getType()) ? (char) 4 : (char) 5;
        }
        TextView textView = (TextView) findViewById(R.id.post_item_property_switch_rating_cost);
        Resources resources = getResources();
        int i = R.color.item_property_panel_switch_dark;
        textView.setTextColor(resources.getColorStateList(c == 1 ? R.color.item_property_panel_switch_dark : R.color.item_property_panel_switch_light));
        ((TextView) findViewById(R.id.post_item_property_switch_rating_heart)).setTextColor(getResources().getColorStateList(c == 2 ? R.color.item_property_panel_switch_dark : R.color.item_property_panel_switch_light));
        ((TextView) findViewById(R.id.post_item_property_switch_rating_star)).setTextColor(getResources().getColorStateList(c == 3 ? R.color.item_property_panel_switch_dark : R.color.item_property_panel_switch_light));
        ((TextView) findViewById(R.id.post_item_property_switch_calendar)).setTextColor(getResources().getColorStateList(c == 4 ? R.color.item_property_panel_switch_dark : R.color.item_property_panel_switch_light));
        TextView textView2 = (TextView) findViewById(R.id.post_item_property_switch_keyboard);
        Resources resources2 = getResources();
        if (c != 5) {
            i = R.color.item_property_panel_switch_light;
        }
        textView2.setTextColor(resources2.getColorStateList(i));
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_star)).setRating(focusedEditor == null ? 0 : focusedEditor.getRating());
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_star)).setVisibility(c == 3 ? 0 : 8);
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_heart)).setRating(focusedEditor == null ? 0 : focusedEditor.getRating());
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_heart)).setVisibility(c == 2 ? 0 : 8);
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_cost)).setRating(focusedEditor == null ? 0 : focusedEditor.getRating());
        ((FontAwesomeRatingBar) findViewById(R.id.post_item_property_panel_rating_cost)).setVisibility(c == 1 ? 0 : 8);
        Calendar calendar = Calendar.getInstance();
        if (focusedEditor != null && focusedEditor.getDate() != null) {
            calendar.setTime(focusedEditor.getDate());
        }
        ((DatePicker) findViewById(R.id.post_item_property_panel_date)).init(calendar.get(1), calendar.get(2), calendar.get(5), this.dateListener);
        ((DatePicker) findViewById(R.id.post_item_property_panel_date)).setVisibility(c != 4 ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ItemPropertyEditor getFocusedEditor() {
        View focusedChild = this.root;
        for (int i = 0; i < 6; i++) {
            if (focusedChild instanceof ItemPropertyEditor) {
                return (ItemPropertyEditor) focusedChild;
            }
            if (focusedChild instanceof ViewGroup) {
                focusedChild = ((ViewGroup) focusedChild).getFocusedChild();
            }
        }
        return null;
    }
}
