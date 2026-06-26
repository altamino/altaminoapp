.class public Lcom/narvii/widget/CountdownButton;
.super Landroid/widget/Button;
.source "CountdownButton.java"

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

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/widget/CountdownButton;->text:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    .line 26
    iput-object p3, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/narvii/widget/CountdownButton;->update()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 39
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 47
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/narvii/widget/CountdownButton;->update()V

    :cond_0
    return-void
.end method

.method public recordTime()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/narvii/widget/CountdownButton;->update()V

    return-void
.end method

.method update()V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/narvii/widget/CountdownButton;->text:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 67
    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 68
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 70
    iget-object v3, p0, Lcom/narvii/widget/CountdownButton;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/narvii/widget/CountdownButton;->prefsKey:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-wide/32 v5, 0xea60

    add-long/2addr v5, v3

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3c

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {p0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
