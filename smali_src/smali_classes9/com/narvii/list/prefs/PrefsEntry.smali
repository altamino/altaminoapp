.class public Lcom/narvii/list/prefs/PrefsEntry;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "SourceFile"


# instance fields
.field public callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public callbackIntent:Landroid/content/Intent;

.field public requestCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/list/prefs/PrefsEntry;->requestCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/list/prefs/PrefsEntry;->requestCode:I

    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/list/prefs/PrefsEntry;->requestCode:I

    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    return-void
.end method
