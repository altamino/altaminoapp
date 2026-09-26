.class public Lcom/google/firebase/crashlytics/internal/settings/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/settings/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final maxCompleteSessionsCount:I

.field public final maxCustomExceptionEvents:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/settings/d$b;->maxCustomExceptionEvents:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/settings/d$b;->maxCompleteSessionsCount:I

    .line 8
    return-void
.end method
