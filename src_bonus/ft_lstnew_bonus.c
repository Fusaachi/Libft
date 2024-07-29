/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pgiroux <pgiroux@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/05 10:33:06 by pgiroux           #+#    #+#             */
/*   Updated: 2024/07/29 10:41:43 by pgiroux          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*newelt;

	newelt = malloc(sizeof(t_list));
	if (newelt == NULL)
		return (NULL);
	newelt->content = content;
	newelt->next = NULL;
	return (newelt);
}
