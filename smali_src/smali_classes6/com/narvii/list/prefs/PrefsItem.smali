.class public Lcom/narvii/list/prefs/PrefsItem;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 9
    .line 10
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/list/prefs/PrefsItem;->descTruncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsItem;->text2Bold:Z

    .line 16
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 18
    move-result v0

    .line 19
    return v0
.end method
