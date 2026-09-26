.class public Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
.super Landroidx/lifecycle/MutableLiveData;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TD;>;",
        "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mId:I

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mLoader:Landroidx/loader/content/Loader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/content/Loader<",
            "TD;>;",
            "Landroidx/loader/content/Loader<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1, p0}, Landroidx/loader/content/Loader;->registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-boolean p1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 3
    .line 4
    const-string v0, "LoaderManager"

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "onLoadComplete: "

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->p(Ljava/lang/Object;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    sget-boolean p1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const-string p1, "onLoadComplete was incorrectly called on a background thread"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->m(Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void
.end method

.method protected k()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "  Starting: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "LoaderManager"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->startLoading()V

    .line 32
    return-void
.end method

.method protected l()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "  Stopping: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "LoaderManager"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->stopLoading()V

    .line 32
    return-void
.end method

.method public n(Landroidx/lifecycle/Observer;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TD;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/Observer;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 9
    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->reset()V

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 14
    :cond_0
    return-void
.end method

.method q(Z)Landroidx/loader/content/Loader;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "  Destroying: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "LoaderManager"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->abandon()V

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n(Landroidx/lifecycle/Observer;)V

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->c()V

    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Landroidx/loader/content/Loader;->unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->b()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    if-eqz p1, :cond_4

    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->reset()V

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 71
    return-object p1

    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 74
    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    const-string v0, "mId="

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    iget v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 14
    .line 15
    const-string v0, " mArgs="

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    const-string v0, "mLoader="

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "  "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 59
    .line 60
    iget-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 61
    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    const-string p2, "mCallbacks="

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    iget-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 76
    .line 77
    iget-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 78
    .line 79
    new-instance p4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p4, p3}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    const-string p2, "mData="

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->s()Landroidx/loader/content/Loader;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 111
    move-result-object p4

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p4}, Landroidx/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    const-string p1, "mStarted="

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->h()Z

    .line 130
    move-result p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 134
    return-void
.end method

.method s()Landroidx/loader/content/Loader;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    return-object v0
.end method

.method t()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/Observer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 15
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x40

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    const-string v1, "LoaderInfo{"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, " #"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, " : "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 44
    .line 45
    const-string/jumbo v1, "}}"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method u(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n(Landroidx/lifecycle/Observer;)V

    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 24
    return-object p1
.end method
