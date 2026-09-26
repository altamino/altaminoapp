.class public Lcom/google/firebase/crashlytics/internal/settings/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/settings/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final collectAnrs:Z

.field public final collectBuildIds:Z

.field public final collectReports:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/settings/d$a;->collectReports:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/settings/d$a;->collectAnrs:Z

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/internal/settings/d$a;->collectBuildIds:Z

    .line 10
    return-void
.end method
