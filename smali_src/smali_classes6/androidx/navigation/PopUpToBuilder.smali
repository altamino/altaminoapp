.class public final Landroidx/navigation/PopUpToBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/NavOptionsDsl;
.end annotation


# instance fields
.field private inclusive:Z

.field private saveState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/PopUpToBuilder;->inclusive:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/PopUpToBuilder;->saveState:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/PopUpToBuilder;->saveState:Z

    return-void
.end method
