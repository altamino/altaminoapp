.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mDefaultProcessName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mExceptionHandler:Landroidx/core/util/Consumer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field mExecutor:Ljava/util/concurrent/Executor;

.field mInputMergerFactory:Landroidx/work/InputMergerFactory;

.field mLoggingLevel:I

.field mMaxJobSchedulerId:I

.field mMaxSchedulerLimit:I

.field mMinJobSchedulerId:I

.field mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field mSchedulingExceptionHandler:Landroidx/core/util/Consumer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field mTaskExecutor:Ljava/util/concurrent/Executor;

.field mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration;)V
    .locals 1
    .param p1    # Landroidx/work/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, p1, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 5
    iget-object v0, p1, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 6
    iget-object v0, p1, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 7
    iget v0, p1, Landroidx/work/Configuration;->mLoggingLevel:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 8
    iget v0, p1, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 9
    iget v0, p1, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 10
    iget v0, p1, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    .line 11
    iget-object v0, p1, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 12
    iget-object v0, p1, Landroidx/work/Configuration;->mExceptionHandler:Landroidx/core/util/Consumer;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mExceptionHandler:Landroidx/core/util/Consumer;

    .line 13
    iget-object v0, p1, Landroidx/work/Configuration;->mSchedulingExceptionHandler:Landroidx/core/util/Consumer;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mSchedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 14
    iget-object p1, p1, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/Configuration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/work/Configuration;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    .line 6
    return-object v0
.end method
