.class public Lcom/narvii/paging/state/PageLoadState;
.super Ljava/lang/Object;
.source "PageLoadState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/state/PageLoadState$Status;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x2

.field public static final IDLE:I = -0x1

.field public static final LOADED:I = 0x1

.field public static final LOADING:I


# instance fields
.field public errorMessage:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/paging/state/PageLoadState;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/narvii/paging/state/PageLoadState;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 36
    iput-object p2, p0, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isFailed()Z
    .locals 2

    .line 44
    iget v0, p0, Lcom/narvii/paging/state/PageLoadState;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 40
    iget v0, p0, Lcom/narvii/paging/state/PageLoadState;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
