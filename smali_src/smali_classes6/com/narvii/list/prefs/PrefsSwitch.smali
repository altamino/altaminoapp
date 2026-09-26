.class public Lcom/narvii/list/prefs/PrefsSwitch;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    iput p2, p0, Lcom/narvii/list/prefs/PrefsSwitch;->switchMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    iput p2, p0, Lcom/narvii/list/prefs/PrefsSwitch;->switchMode:I

    return-void
.end method
