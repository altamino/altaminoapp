.class public Lcom/narvii/list/prefs/PrefsText;
.super Lcom/narvii/list/prefs/PrefsEntry;
.source "PrefsText.java"


# instance fields
.field public drawableId:I

.field public text:Ljava/lang/String;

.field public textColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsEntry;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsText;-><init>(I)V

    .line 28
    iput-object p2, p0, Lcom/narvii/list/prefs/PrefsText;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    return-void
.end method
