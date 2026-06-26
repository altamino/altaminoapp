.class final Lcom/narvii/checkin/CheckInPrefsHelper$sps$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CheckInPrefsHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInPrefsHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInPrefsHelper;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInPrefsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPrefsHelper$sps$2;->this$0:Lcom/narvii/checkin/CheckInPrefsHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPrefsHelper$sps$2;->this$0:Lcom/narvii/checkin/CheckInPrefsHelper;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInPrefsHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkIn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInPrefsHelper$sps$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
