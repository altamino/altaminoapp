.class public Lcom/narvii/list/prefs/PrefsSection;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "PrefsSection.java"


# instance fields
.field public isAllCaps:Z

.field public learnMoreUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 15
    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 23
    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 24
    iput-object p2, p0, Lcom/narvii/list/prefs/PrefsSection;->learnMoreUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 19
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    return-void
.end method
