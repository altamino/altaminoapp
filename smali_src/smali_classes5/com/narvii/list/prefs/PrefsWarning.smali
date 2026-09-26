.class public Lcom/narvii/list/prefs/PrefsWarning;
.super Lcom/narvii/list/prefs/PrefsEntry;
.source "SourceFile"


# instance fields
.field public subTitle:Ljava/lang/String;

.field public warningInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsEntry;-><init>()V

    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsEntry;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    return-void
.end method
