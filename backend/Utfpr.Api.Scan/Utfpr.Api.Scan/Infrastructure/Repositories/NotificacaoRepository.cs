﻿using Utfpr.Api.Scan.Application.Notificacao.Interfaces;
using Utfpr.Api.Scan.Application.Notification;
using Utfpr.Api.Scan.Domain.Models.Notificacao;
using Utfpr.Api.Scan.Infrastructure.Data;

namespace Utfpr.Api.Scan.Infrastructure.Repositories;

public class NotificacaoRepository : Repository<Notificacao>, INotificacaoRepository
{
    public NotificacaoRepository(ApplicationDbContext context, INotificationContext notificationContext) : base(context, notificationContext)
    {
    }
}