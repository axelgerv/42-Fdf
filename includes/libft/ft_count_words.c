/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_count_words.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: axelgerv <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/27 18:23:21 by axelgerv          #+#    #+#             */
/*   Updated: 2018/11/27 18:23:48 by axelgerv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_count_words(char const *s, char c)
{
	int i;
	int words;

	i = 0;
	words = 0;
	while (s[i])
	{
		if (s[i] != c)
			words++;
		while (s[i + 1] && s[i] != c)
			i++;
		i++;
	}
	return (words);
}
