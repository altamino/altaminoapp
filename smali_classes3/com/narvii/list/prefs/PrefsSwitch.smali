.class public Lcom/narvii/list/prefs/PrefsSwitch;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "PrefsSwitch.java"


# static fields
.field public static final SWITCH_MODE_ACTION_SHEET:I = 0x0

.field public static final SWITCH_MODE_DIRECTLY:I = 0x1


# instance fields
.field public callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsSwitch;",
            ">;"
        }
    .end annotation
.end field

.field public on:Z

.field public switchMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    .line 17
    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    .line 25
    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 26
    iput p2, p0, Lcom/narvii/list/prefs/PrefsSwitch;->switchMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/narvii/list/prefs/PrefsSwitch;->switchMode:I

    return-void
.end method
