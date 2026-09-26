.class public Lcom/narvii/widget/CountdownButton;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field prefs:Landroid/content/SharedPreferences;

.field prefsKey:Ljava/lang/String;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/CountdownButton;->text:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/CountdownButton;->update()V

    .line 10
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/widget/CountdownButton;->update()V

    .line 12
    :cond_0
    return-void
.end method

.method public recordTime()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/CountdownButton;->update()V

    .line 4
    return-void
.end method

.method update()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->text:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 26
    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 31
    move-result-wide v3

    .line 32
    .line 33
    cmp-long v5, v1, v3

    .line 34
    .line 35
    if-lez v5, :cond_0

    .line 36
    .line 37
    .line 38
    const-wide/32 v5, 0xea60

    .line 39
    add-long/2addr v5, v3

    .line 40
    .line 41
    cmp-long v5, v1, v5

    .line 42
    .line 43
    if-gez v5, :cond_0

    .line 44
    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, " ("

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sub-long/2addr v1, v3

    .line 58
    .line 59
    const-wide/16 v3, 0x3e7

    .line 60
    add-long/2addr v1, v3

    .line 61
    .line 62
    const-wide/16 v3, 0x3e8

    .line 63
    div-long/2addr v1, v3

    .line 64
    .line 65
    const-wide/16 v6, 0x3c

    .line 66
    sub-long/2addr v6, v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, ") "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 v1, 0x1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_2
    return-void
.end method
