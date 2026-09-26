.class Landroidx/work/impl/utils/StatusRunnable$3;
.super Landroidx/work/impl/utils/StatusRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/utils/StatusRunnable<",
        "Ljava/util/List<",
        "Landroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$workManager:Landroidx/work/impl/WorkManagerImpl;


# virtual methods
.method bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/utils/StatusRunnable$3;->b()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable$3;->val$workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->p()Landroidx/work/impl/WorkDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->M()Landroidx/work/impl/model/WorkSpecDao;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/impl/utils/StatusRunnable$3;->val$tag:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->z(Ljava/lang/String;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    return-object v0
.end method
