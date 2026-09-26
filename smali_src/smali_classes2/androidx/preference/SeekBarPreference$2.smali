.class Landroidx/preference/SeekBarPreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/preference/SeekBarPreference$2;->this$0:Landroidx/preference/SeekBarPreference;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference$2;->this$0:Landroidx/preference/SeekBarPreference;

    .line 11
    .line 12
    iget-boolean v1, p1, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x15

    .line 17
    .line 18
    if-eq p2, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x16

    .line 21
    .line 22
    if-ne p2, v1, :cond_2

    .line 23
    :cond_1
    return v0

    .line 24
    .line 25
    :cond_2
    const/16 v1, 0x17

    .line 26
    .line 27
    if-eq p2, v1, :cond_5

    .line 28
    .line 29
    const/16 v1, 0x42

    .line 30
    .line 31
    if-ne p2, v1, :cond_3

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_3
    iget-object p1, p1, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 35
    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    const-string p1, "SeekBarPreference"

    .line 39
    .line 40
    const-string p2, "SeekBar view is null and hence cannot be adjusted."

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v0

    .line 45
    .line 46
    .line 47
    :cond_4
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_5
    :goto_0
    return v0
.end method
