.class public Lcom/narvii/list/prefs/PrefsItem;
.super Ljava/lang/Object;
.source "PrefsItem.java"


# instance fields
.field public chevronRight:Z

.field public desc:Ljava/lang/String;

.field public descColor:I

.field public descTruncateAt:Landroid/text/TextUtils$TruncateAt;

.field public enabled:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconBackgroundColor:I

.field public id:I

.field public name:Ljava/lang/String;

.field public rightIconResId:I

.field public text2Bold:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 19
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/narvii/list/prefs/PrefsItem;->descTruncateAt:Landroid/text/TextUtils$TruncateAt;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsItem;->text2Bold:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    if-eqz v0, :cond_0

    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 30
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
